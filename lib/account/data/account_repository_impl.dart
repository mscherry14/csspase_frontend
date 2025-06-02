import 'dart:convert';

import 'package:csspace_app/common/navigation/presentation/app_user_roles.dart';
import 'package:csspace_app/account/data/utils/jwt_local_storage.dart';

import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:dio/dio.dart';

import 'utils/telegram.dart';
import '../domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final Dio dio;

  AccountRepositoryImpl({required this.dio});

  @override
  Future<SimpleResponse<Set<Roles>>> getAccount() async {
    final localInterceptor = InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        final token = JWTLocalStorage.getAccessToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        return handler.next(response);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) async {
        if (error.response?.statusCode == 401 &&
            error.requestOptions.extra['_retry'] != true) {
          // 1. Пробуем обновить токен
          final refreshToken = JWTLocalStorage.getRefreshToken();
          final response = await dio.post(
            '/auth/refresh',
            options: Options(
              headers: {"Authorization": "Bearer $refreshToken"},
              extra: {'_retry': true},
            ),
          );
          if (response.statusCode == 200) {
            JWTLocalStorage.saveAccessToken(response.data["access_token"]);
            JWTLocalStorage.saveRefreshToken(response.data["refresh_token"]);
            error.requestOptions.headers['Authorization'] =
                'Bearer ${response.data["access_token"]}';
            error.requestOptions.extra['_retry'] = true;
            return handler.resolve(await dio.fetch(error.requestOptions));
          }
        }
        return handler.next(error);
      },
    );

    try {
      final String token = JWTLocalStorage.getAccessToken() ?? "";
      final rolesRes = await dio.get(
        "/auth/me/roles",
        options: Options(
          extra: {
            'interceptors': [localInterceptor],
          },
        ),
      );
      if (rolesRes.statusCode == 200) {
        final set = <Roles>{};
        for (final pRole in rolesRes.data) {
          final role = AuthenticatedNavigation.fromSegment(pRole as String);
          if (role != null) {
            set.add(role);
          }
        }
        return SimpleOkResponse(payload: set);
      }
      return SimpleErrorResponse(
        message: 'auth error: cant get roles',
        payload: <Roles>{},
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return SimpleErrorResponse(
          message: "Пользователь не авторизован",
          payload: <Roles>{},
        );
      }
      if (e.response?.statusCode != 500) {
        return SimpleErrorResponse(
          message: e.response?.statusMessage ?? "неизвестная ошибка",
          payload: <Roles>{},
        );
      } else {
        rethrow;
      }
    } catch (e) {
      return SimpleErrorResponse(
        message: 'auth error: ${e.toString()}',
        payload: <Roles>{},
      );
    }
  }

  @override
  Future<SimpleResponse<Set<Roles>>> login() async {
    //get tg init data
    try {
      final String? initData = getTelegramInitData();
      if (initData == null) {
        return SimpleErrorResponse(
          message: 'no initData found',
          payload: <Roles>{},
        );
      }
      //send /auth/login request
      final res = await dio.post(
        "/auth/tg_login",
        data: jsonEncode({"initData": initData}),
      );
      if (res.statusCode == 200) {
        JWTLocalStorage.saveAccessToken(res.data["access_token"]);
        JWTLocalStorage.saveRefreshToken(res.data["refresh_token"]);
        final String token = res.data["access_token"].toString();
        final rolesRes = await dio.get(
          "/auth/me/roles",
          options: Options(headers: {"Authorization": "Bearer $token"}),
        );
        if (rolesRes.statusCode == 200) {
          final set = <Roles>{};
          for (final pRole in rolesRes.data) {
            final role = AuthenticatedNavigation.fromSegment(pRole as String);
            if (role != null) {
              set.add(role);
            }
          }
          return SimpleOkResponse(payload: set);
        }
        return SimpleErrorResponse(
          message: 'auth error: cant get roles',
          payload: <Roles>{},
        );
      }
      return SimpleErrorResponse(
        message: 'auth error: ${res.data}',
        payload: <Roles>{},
      );
    } on DioException catch (e) {
      if (e.response?.statusCode != 500) {
        return SimpleErrorResponse(
          message:
              'Для прользования приложением необходимо пройти регистрацию в боте', //TODO: ошибки поадекватнее
          payload: <Roles>{},
        );
      } else {
        rethrow;
      }
    } catch (e) {
      return SimpleErrorResponse(
        message: 'auth error: ${e.toString()}',
        payload: <Roles>{},
      );
    }
  }
}

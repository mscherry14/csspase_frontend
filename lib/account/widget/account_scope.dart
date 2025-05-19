import 'package:csspace_app/common/app/widget/unauthorized_app_material_context.dart';
import 'package:csspace_app/common/utils/jwt_local_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/navigation/presentation/app_user_roles.dart';
import '../../env.dart';
import '../data/account_repository_impl.dart';
import '../domain/account_bloc/account_bloc.dart';

class AccountScope extends StatelessWidget {
  final Widget child;

  const AccountScope({required this.child, super.key});

  static Set<Roles> of(BuildContext context) {
    final AccountProvider? result =
        context.dependOnInheritedWidgetOfExactType<AccountProvider>();
    assert(result != null, 'No AccountProvider found in context');
    return result!.roles;
  }

  static Dio dioOf(BuildContext context) {
    final AccountProvider? result =
    context.getInheritedWidgetOfExactType<AccountProvider>();
    assert(result != null, 'No AccountProvider found in context');
    return result!.dio;
  }


  @override
  Widget build(BuildContext context) => BlocProvider(
    //TODO: dio provider/url from .env
    create:
        (context) => AccountBloc(
          AccountRepositoryImpl(
            dio: Dio(BaseOptions(baseUrl: Env.baseURL)),
          ),
        )..add(
          AccountLogin(),
        ), //getIt<AccountBloc>(), //todo: think about getit
    child: BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        if (state is AccountAuthenticatedState) {
          return AccountProvider(roles: state.userRoles, dio: Dio(BaseOptions(baseUrl: Env.baseURL)),
          child: child);
        } else {
          return UnauthorizedAppMaterialContext(
            errorMessage: (state as AccountUnauthenticatedState).errorMessage,
          ); //TODO: implement
        }
      },
    ),
  );
}

class AccountProvider extends InheritedWidget {
  final Set<Roles> roles;
  final Dio dio;

  AccountProvider({required this.roles, required this.dio, required super.child, super.key}) {
    dio.interceptors.add(
      InterceptorsWrapper(
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
          if (error.response?.statusCode == 401 && error.requestOptions.extra['_retry'] != true) {
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
      ),
    );
  }

  @override
  bool updateShouldNotify(AccountProvider oldWidget) {
    return oldWidget.roles != roles || oldWidget.dio != dio;
  }
}

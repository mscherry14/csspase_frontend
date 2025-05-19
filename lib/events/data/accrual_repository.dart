import 'dart:convert';

import 'package:csspace_app/common/utils/simple_response.dart';

import 'package:csspace_app/events/domain/model/participant_model.dart';
import 'package:dio/dio.dart';

import '../domain/accrual_repository.dart';
import '../domain/model/accrual_model.dart';
import '../domain/model/event_short_model.dart';

class AccrualRepositoryImpl implements AccrualRepository {
  final Dio dio;
  final CancelToken? cancelToken;

  AccrualRepositoryImpl({required this.dio, this.cancelToken});

  @override
  Future<SimpleResponse<int>> getEventTokensCapacity({
    required String eventId,
  }) async {
    try {
      final res = await dio.get("/teacher/events/$eventId");
      if (res.statusCode == 200) {
        return SimpleOkResponse(
          payload: EventShortModel.fromJson(res.data).actualBalance,
        );
      }
      return SimpleErrorResponse(
        message: 'getEventTokensCapacity error: unknown error',
        payload: null,
      );
    } catch (e) {
      return SimpleErrorResponse(
        message: "getEventTokensCapacity error: ${e.toString()}",
        payload: null,
      );
    }
  }

  @override
  Future<SimpleResponse<ParticipantModel>> getRecipientById({
    required String eventId,
    required String personId,
  }) async {
    try {
      final res = await dio.get(
        "/teacher/events/$eventId/participants/$personId",
      );
      if (res.statusCode == 200) {
        return SimpleOkResponse(payload: ParticipantModel.fromJson(res.data));
      }
      return SimpleErrorResponse(
        message: 'getRecipientById error: unknown error',
        payload: null,
      );
    } catch (e) {
      return SimpleErrorResponse(
        message: "getRecipientById error: ${e.toString()}",
        payload: null,
      );
    }
  }

  @override
  Future<SimpleResponse<AccrualModel>> send({
    required String eventId,
    required String personId,
    required int sum,
  }) async {
    try {
      final res = await dio.post(
        "/teacher/events/$eventId/participants/$personId",
        data: jsonEncode({"amount": sum}),
      );
      if (res.statusCode == 200) {
        return SimpleOkResponse(payload: AccrualModel.fromJson(res.data));
      }
      return SimpleErrorResponse(message: 'sendTokens error: unknown error', payload: null);
    } catch (e) {
      return SimpleErrorResponse(message: "sendTokens error: ${e.toString()}", payload: null);
    }
  }
}

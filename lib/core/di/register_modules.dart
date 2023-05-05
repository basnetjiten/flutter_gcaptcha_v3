/*
 * Copyright (c) 2023.
 * Author: Jiten Basnet
 * Company: EB Pearls
 */

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


@module
abstract class RegisterModules {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(
        baseUrl: 'https://www.google.com/recaptcha/api/siteverify',
        receiveTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
        responseType: ResponseType.json,
        headers: <String, dynamic>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ))
        ..interceptors.addAll([
          LogInterceptor(),
        ]);
}

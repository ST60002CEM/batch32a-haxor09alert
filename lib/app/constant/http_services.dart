import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:memorymate/app/constant/api_endpoint.dart';

class HttpServices {
  HttpServices._internal();
  static Dio? _dio;

  static final HttpServices _internalObject = HttpServices._internal();
  factory HttpServices() => _internalObject;

  Dio getDioInstance() {
    if (_dio == null) {
      _dio = Dio(BaseOptions(baseUrl: baseUrl, connectTimeout: 5000));

      _dio?.interceptors
          .add(DioLoggingInterceptor(level: Level.body, compact: false));
      return _dio!;
    } else {
      return _dio!;
    }
  }
}

import 'package:dio/dio.dart';
//import '../../features/auth/data/storage/auth_storage.dart';

// G -- Guard: attach token on every outgoing request
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: Add token when ready
    //final token = AuthStorage.instance.accessToken;
    //if (token != null && token.isNotEmpty) {
    //   options.headers['Authorization'] = 'Bearer $token';
    //}
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // S -- Status: 401 → attempt token refresh
    if (err.response?.statusCode == 401) {
      try {
        // TODO: call your refresh endpoint here
        // final newToken = await AuthApiService().refreshToken(...);
        // AuthStorage.instance.saveTokens(newToken);
        // final opts = err.requestOptions;
        // opts.headers['Authorization'] = 'Bearer ${newToken.accessToken}';
        // handler.resolve(await ApiService.instance.dio.fetch(opts));
        // return;
      } catch (_) {
        // Refresh failed -- user must log in again
        // AuthStorage.instance.clear();
      }
    }
    handler.next(err);
  }
}

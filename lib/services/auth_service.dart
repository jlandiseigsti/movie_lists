import 'dart:convert';
import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_lists/env/env.dart';
import 'package:movie_lists/services/http_service.dart';

abstract class AuthService {
  Future<Map<String, dynamic>> getRequestToken();
  Future<Map<String, dynamic>> login(
      String username, String password, String requestToken);
  Future<int> getAccountId(String sessionId);

}

class TmbdAuthService extends AuthService {
  TmbdAuthService(this.ref);
  final Ref ref;

  final apiKey = Env.apiKey;

  /// Gets the request token
  @override
  Future<Map<String, dynamic>> getRequestToken() async {
    try {
      final response = await ref
          .watch(baseClient)
          .get(Uri.parse('${Env.baseUrl}/authentication/token/new?api_key=$apiKey'));
      return jsonDecode(response.body);
    } catch (e) {
      log(e.toString());
      throw Error();
    }
  }

  /// Logins the user and returns the session id
  @override
  Future<Map<String, dynamic>> login(username, password, requestToken,) async {
    try {
      await ref.watch(baseClient).post(
          Uri.parse('${Env.baseUrl}/authentication/token/validate_with_login?api_key=$apiKey'),
          body: {
            'username': username,
            'password': password,
            'request_token': requestToken,
          });

      final response = await ref.watch(baseClient).post(
          Uri.parse('${Env.baseUrl}/authentication/session/new?api_key=$apiKey'),
          body: {'request_token': requestToken});
      return jsonDecode(response.body);
    } catch (e) {
      log(e.toString());
      throw Error();
    }
  }

  /// Gets the account id from the sessionId
  @override
  Future<int> getAccountId(String sessionId) async {
    try {
      final response = await ref.watch(baseClient).get(
          Uri.parse('${Env.baseUrl}/account?session_id=$sessionId&api_key=$apiKey'));
      final responseJson = jsonDecode(response.body);
      return responseJson['id'];
    } catch (e) {
      log(e.toString());
      throw Error();
    }
  }
}

final authServiceProvider = Provider<AuthService>((ref) {
  return TmbdAuthService(ref);
});
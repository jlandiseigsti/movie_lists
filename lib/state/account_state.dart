import 'package:movie_lists/services/auth_service.dart';
import 'package:movie_lists/state/state_models.dart';
import 'package:riverpod/riverpod.dart';

class AccountStateNotifier extends AsyncNotifier<AccountState> {
  @override
  AccountState build() => const AccountState();

  Future<void> login(String username, String password) async {
    final previousState = state.value;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final requestToken =
          await ref.read(authServiceProvider).getRequestToken();
      final sessionId = await ref.read(authServiceProvider).login(
            username,
            password,
            requestToken['request_token'],
          );
      final accountId = await ref.read(authServiceProvider).getAccountId(
            sessionId['session_id'],
          );
      return previousState!.copyWith(
        username: username,
        sessionId: sessionId['session_id'],
        accountId: accountId,
      );
    });
  }
}

final accountStateProvider =
    AsyncNotifierProvider<AccountStateNotifier, AccountState>(() {
  return AccountStateNotifier();
});

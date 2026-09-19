class SignInRepoImpl {
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return email.isNotEmpty && password.isNotEmpty;
  }
}

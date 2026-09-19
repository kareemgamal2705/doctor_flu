class SignupRepoImpl {
  Future<bool> signup(String name, String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return name.isNotEmpty && email.isNotEmpty && password.isNotEmpty;
  }
}

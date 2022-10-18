import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/routes/routes.dart';
import 'package:leal_movies/src/core/widgets/snackbar.dart';
import 'package:leal_movies/src/login/models/credentials.dart';
import 'package:leal_movies/src/login/repositories/login_repository.dart';

final loginProvider = Provider<LoginProvider>(
  (ref) {
    final loginRepository = ref.watch(loginRepositoryProvider);
    return LoginProvider(loginRepository);
  },
);

class LoginProvider {
  LoginRepository loginRepository;

  String _name = "";
  void setName(String newName) => _name = newName;
  String _password = "";
  void setPassword(String newPassword) => _password = newPassword;

  LoginProvider(this.loginRepository);

  bool loading = false;
  void login(BuildContext context) async {
    if (!loading) {
      loading = true;
      bool result = await loginRepository
          .login(Credentials(name: _name, password: _password));
      if (result) {
        _clearAndRedirectToHome(context);
      } else {
        showMySnackBar(context,
            message: "El nombre y o contraseña son incorrectos");
      }
      loading = false;
    }
  }

  void _clearAndRedirectToHome(BuildContext context) {
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.popAndPushNamed(context, Pages.home.value);
  }
}

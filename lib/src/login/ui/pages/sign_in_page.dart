import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/routes/routes.dart';
import 'package:leal_movies/src/core/widgets/rounded_button.dart';
import 'package:leal_movies/src/core/widgets/snackbar.dart';
import 'package:leal_movies/src/login/ui/widgets/background_widget.dart';
import 'package:leal_movies/src/login/ui/widgets/forgot_password_widget.dart';

class SignInPage extends HookConsumerWidget {
  static const pageRoute = "/signIn";
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      body: BackgroundWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            RoundedButton(
              content: "Sign up",
              onTap: () => showSnackBarInProgress(context),
            ),
            const SizedBox(height: 20),
            RoundedButton(
              content: "Log in",
              color: theme.primaryColorLight,
              onTap: () {
                Navigator.pushNamed(context, Pages.login.value);
              },
            ),
            const SizedBox(height: 20),
            const ForgotPasswordWidget()
          ],
        ),
      ),
    );
  }
}

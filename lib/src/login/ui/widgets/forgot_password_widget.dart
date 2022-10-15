import 'package:flutter/material.dart';
import 'package:leal_movies/src/core/widgets/snackbar.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () => showSnackBarInProgress(context),
          child: SizedBox(
            width: 160,
            height: 35,
            child: Center(
              child: Text("Forgot password?",
                  style: TextStyle(
                      color: theme.primaryColorLight,
                      fontSize: 18,
                      decoration: TextDecoration.underline)),
            ),
          )),
    );
  }
}

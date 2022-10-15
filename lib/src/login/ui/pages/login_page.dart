import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/widgets/rounded_button.dart';
import 'package:leal_movies/src/login/ui/widgets/background_widget.dart';

class LoginPage extends HookConsumerWidget {
  static const pageRoute = "/login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      body: BackgroundWidget(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: theme.primaryColorDark.withOpacity(0.9),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: double.infinity),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close, color: theme.dividerColor)),
                  ),
                  const AppTextField(labelText: "Name"),
                  const SizedBox(height: 20),
                  const AppTextField(labelText: "Password"),
                  const SizedBox(height: 20),
                  SafeArea(
                    child: RoundedButton(
                        content: "Log in", color: theme.primaryColorLight),
                  ),
                  const SizedBox(height: 20),
                ],
              )),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      cursorColor: theme.dividerColor,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: theme.dividerColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: theme.dividerColor),
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: theme.dividerColor),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:leal_movies/src/home/ui/pages/home_page.dart';
import 'package:leal_movies/src/login/ui/pages/login_page.dart';
import 'package:leal_movies/src/login/ui/pages/sign_in_page.dart';

final routes = <String, WidgetBuilder>{
  LoginPage.pageRoute: (BuildContext context) => const LoginPage(),
  SignInPage.pageRoute: (BuildContext context) => const SignInPage(),
  HomePage.pageRoute: (BuildContext context) => const HomePage(),
};

enum Pages {
  login(LoginPage.pageRoute),
  singIn(SignInPage.pageRoute),
  home(HomePage.pageRoute);

  const Pages(this.value);
  final String value;
}

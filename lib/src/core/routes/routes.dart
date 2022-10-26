import 'package:flutter/material.dart';
import 'package:leal_movies/src/popular_series/ui/pages/popular_series_page.dart';
import 'package:leal_movies/src/login/ui/pages/login_page.dart';
import 'package:leal_movies/src/login/ui/pages/sign_in_page.dart';

final routes = <String, WidgetBuilder>{
  LoginPage.pageRoute: (BuildContext context) => const LoginPage(),
  SignInPage.pageRoute: (BuildContext context) => const SignInPage(),
  PopularSeriesPage.pageRoute: (BuildContext context) =>
      const PopularSeriesPage(),
};

enum Pages {
  login(LoginPage.pageRoute),
  singIn(SignInPage.pageRoute),
  home(PopularSeriesPage.pageRoute);

  const Pages(this.value);
  final String value;
}

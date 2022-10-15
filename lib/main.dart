import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/theme/theme.dart';
import 'package:leal_movies/src/login/ui/pages/sign_in_page.dart';
import 'package:leal_movies/src/core/routes/routes.dart';

final helloWorldProvider = Provider((_) => MyClass());

class MyClass {
  String text = "hellow world";
}

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value =
        ref.watch(helloWorldProvider.select((value) => value.text));

    return MaterialApp(
      routes: routes,
      initialRoute: SignInPage.pageRoute,
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Text(value),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          ref.read(helloWorldProvider).text = "Hello world";
        }),
      ),
    );
  }
}

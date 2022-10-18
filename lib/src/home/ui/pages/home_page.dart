import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/routes/routes.dart';

class HomePage extends HookConsumerWidget {
  static const pageRoute = "/home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColorDark,
      appBar: AppBar(
        title: Center(
            child: Text(
          "Home",
          style:
              TextStyle(color: theme.dividerColor, fontWeight: FontWeight.w600),
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined, color: theme.dividerColor),
            onPressed: () {
              Navigator.popAndPushNamed(context, Pages.singIn.value);
            },
          ),
        ],
        backgroundColor: theme.primaryColorDark,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text('Popular',
                style: TextStyle(
                    color: theme.primaryColorLight,
                    fontSize: 28,
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/services/storage/hive_storage_service.dart';
import 'package:leal_movies/src/core/services/storage/storage_service.dart';
import 'package:leal_movies/src/core/services/storage/storage_service_provider.dart';
import 'package:leal_movies/src/core/theme/theme.dart';
import 'package:leal_movies/src/login/ui/pages/sign_in_page.dart';
import 'package:leal_movies/src/core/routes/routes.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      // Hive-specific initialization
      await Hive.initFlutter();
      final StorageService initializedStorageService = HiveStorageService();
      await initializedStorageService.init();

      runApp(
        ProviderScope(
          overrides: [
            storageServiceProvider.overrideWithValue(initializedStorageService),
          ],
          child: const MyApp(),
        ),
      );
    },
    // ignore: only_throw_errors
    (e, _) => throw e,
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      routes: routes,
      initialRoute: SignInPage.pageRoute,
      theme: appTheme,
    );
  }
}

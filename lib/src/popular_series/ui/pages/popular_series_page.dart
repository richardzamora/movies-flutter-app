import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/routes/routes.dart';
import 'package:leal_movies/src/popular_series/providers/popular_series_provider.dart';

class PopularSeriesPage extends HookConsumerWidget {
  static const pageRoute = "/home";
  const PopularSeriesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tvSeriesAsync = ref.watch(popularSeriesProvider(1));
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
          tvSeriesAsync.when(
            data: (data) {
              return Expanded(
                child: ListView.builder(
                  itemCount: data.results.length,
                  itemBuilder: (context, index) {
                    return Text(
                      data.results[index].name ?? "name",
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    );
                  },
                ),
              );
            },
            error: (error, stackTrace) {
              String message = error.toString();
              if (error is DioError) {
                message = error.message;
              }
              return Container(
                color: Colors.red,
                child: Text(message),
              );
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
          )
        ],
      ),
    );
  }
}

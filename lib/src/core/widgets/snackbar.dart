import 'package:flutter/material.dart';

SnackBar mySnackBarInProgress() {
  return const SnackBar(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      elevation: 1,
      behavior: SnackBarBehavior.floating,
      content: Text(
        "Ups, esta funcionalidad aún se encuentra en desarrollo",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ));
}

void showSnackBarInProgress(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(mySnackBarInProgress());
}

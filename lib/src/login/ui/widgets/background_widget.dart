import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/background.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            )),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome!',
                style: TextStyle(
                    color: theme.primaryColorLight,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}

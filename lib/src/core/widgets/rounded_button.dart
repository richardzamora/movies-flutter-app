import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color? color;
  final String content;
  final VoidCallback? onTap;
  final double borderRadius;
  final double width;
  final double height;
  const RoundedButton(
      {Key? key,
      this.color,
      required this.content,
      this.onTap,
      this.borderRadius = 20,
      this.width = 160,
      this.height = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: color ?? theme.primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius),
          child: SizedBox(
            width: width,
            height: height,
            child: Center(
                child: Text(content,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: theme.primaryColorDark))),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../app/colors.dart';
import '../app_text.dart';

class SquareButton extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final Color backgroundColor;
  final double size;
  final String? text;
  final IconData? icon;
  final bool isIcon;
  final void Function() onTap;

  const SquareButton({
    required this.onTap,
    this.color = Colors.black87,
    this.borderColor = AppColors.buttonBackground,
    this.backgroundColor = AppColors.buttonBackground,
    this.size = 60,
    this.isIcon = false,
    this.text,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: 2.0,
          ),
        ),
        child: Center(
          child: isIcon
              ? Icon(
                  icon,
                  color: color,
                )
              : AppText(
                  text: text ?? '',
                  color: color,
                ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

import '../app/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final double? width;
  final String? text;
  final void Function()? onTap;

  const ResponsiveButton({
    super.key,
    this.width,
    this.text,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    bool hasText = text != null;
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.mainColor),
          child: Row(
            mainAxisAlignment: hasText
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              if (hasText)
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppText(
                    text: text!,
                    color: Colors.white,
                  ),
                ),
              Image.asset('img/button-one.png'),
            ],
          ),
        ),
      ),
    );
  }
}

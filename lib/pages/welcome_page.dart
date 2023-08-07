import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

import '../app/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> welcomeImages = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];

  List<String> welcomeText = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: welcomeImages.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'img/${welcomeImages[index]}',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                top: 150,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: 'Trips'),
                      AppText(
                        text: 'Mountain',
                        size: 30,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              'Mountain hikes give you an incredible sense of freedom along with endurance test',
                          size: 14,
                          color: AppColors.textColor2,
                        ),
                      ),
                      SizedBox(height: 40),
                      ResponsiveButton(
                        width: 120,
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (dotIndex) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == dotIndex ? 25 : 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == dotIndex
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3)),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

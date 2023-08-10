import 'package:flutter/material.dart';

import '../app/colors.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/common/square_button.dart';
import '../widgets/responsive_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double tripRate = 4.0;
  int selectedPeopleCount = 0;
  bool isFavourate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/mountain.jpeg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: 'Yosemite',
                            color: Colors.black.withOpacity(0.7),
                          ),
                          const AppLargeText(
                            text: '\$250',
                            color: AppColors.mainColor,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(width: 10),
                          AppText(
                            text: 'USA, California',
                            color: AppColors.textColor1,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                              5,
                              (index) {
                                if (index < tripRate) {
                                  return const Icon(
                                    Icons.star,
                                    color: AppColors.starColor,
                                  );
                                } else {
                                  return const Icon(
                                    Icons.star_outline,
                                    color: Colors.grey,
                                  );
                                }
                              },
                            ),
                          ),
                          const SizedBox(width: 5),
                          AppText(text: '($tripRate)'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const AppLargeText(
                        text: 'People',
                        color: Colors.black87,
                        size: 20,
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: 'Number of people in your group',
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        children: List.generate(5, (index) {
                          int count = index + 1;
                          bool isSelected = (count == selectedPeopleCount);
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: SquareButton(
                              onTap: () {
                                setState(() {
                                  selectedPeopleCount = count;
                                });
                              },
                              text: count.toString(),
                              backgroundColor: isSelected
                                  ? AppColors.mainColor
                                  : AppColors.buttonBackground,
                              color: isSelected
                                  ? AppColors.buttonBackground
                                  : AppColors.mainColor,
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      const AppLargeText(
                        text: 'Description',
                        color: Colors.black87,
                        size: 20,
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text:
                            'You must go for a travel. Traveling hilps get rid of pressure. Go to the mountains to see the nature in original views.',
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(height: 150),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SquareButton(
                    onTap: () {
                      setState(() {
                        isFavourate = !isFavourate;
                      });
                    },
                    isIcon: true,
                    icon: isFavourate ? Icons.favorite : Icons.favorite_border,
                    color: isFavourate
                        ? AppColors.buttonBackground
                        : AppColors.mainColor.withOpacity(0.5),
                    backgroundColor:
                        isFavourate ? AppColors.mainColor : Colors.white,
                    borderColor: AppColors.mainColor.withOpacity(0.5),
                  ),
                  const ResponsiveButton(
                    width: 300,
                    text: 'Book Trip Now',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 70,
              left: 20,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const AppLargeText(text: 'Descover'),
          ),
          const SizedBox(height: 30),
          Container(),
          Container(),
        ],
      ),
    );
  }
}

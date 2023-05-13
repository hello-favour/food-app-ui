import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/constants/image_path.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/widgets/app_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            ImagePath.deliverBoy,
            height: 300,
          ),
          const SizedBox(height: 5),
          const AppText(
            text: "Order Your Food Now!",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            size: 28,
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: AppText(
              text:
                  "Order Food and get delivery withing a few minutes to your door",
              color: Colors.black45,
              size: 18,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 80),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: AppColors.redColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  AppText(
                    text: "Get Started",
                    color: AppColors.whiteColor,
                    size: 18,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

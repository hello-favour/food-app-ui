import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/constants/image_path.dart';
import 'package:food_app/widgets/app_text.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: const AppText(
          text: "Cheese Pizza",
          color: Colors.black,
          size: 25,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const AppText(
              text: "Mized Pizza with beef, chilli and cheese",
              color: Colors.black45,
              size: 17,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  color: AppColors.redColor,
                  size: 22,
                ),
                SizedBox(width: 5),
                AppText(
                  text: "4.7",
                  color: Colors.black45,
                  size: 16,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset(ImagePath.pizza),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    AppText(
                      text: "Calories",
                      color: Colors.black45,
                      size: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 8),
                    AppText(
                      text: "120",
                      color: Colors.black45,
                      size: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black38,
                ),
                Column(
                  children: const [
                    AppText(
                      text: "Volume",
                      color: Colors.black45,
                      size: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 8),
                    AppText(
                      text: "12 inch",
                      color: Colors.black45,
                      size: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black38,
                ),
                Column(
                  children: const [
                    AppText(
                      text: "Distance",
                      color: Colors.black45,
                      size: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 8),
                    AppText(
                      text: "1 KM",
                      color: Colors.black45,
                      size: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const AppText(
                        text: "Order",
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.black45,
                          ),
                          SizedBox(width: 2),
                          AppText(
                            text: "01",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            size: 17,
                          ),
                          SizedBox(width: 2),
                          Icon(
                            CupertinoIcons.minus_circle,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      AppText(
                        text: "Delivery",
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        size: 17,
                      ),
                      SizedBox(height: 8),
                      AppText(
                        text: "Express",
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        size: 17,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      AppText(
                        text: "Price",
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        size: 17,
                      ),
                      SizedBox(height: 8),
                      AppText(
                        text: "\$8.99",
                        color: AppColors.redColor,
                        fontWeight: FontWeight.bold,
                        size: 17,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: AppColors.redColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AppText(
                text: "Add to Cart",
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                size: 16,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.add_circle_outline_rounded,
                color: AppColors.whiteColor,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

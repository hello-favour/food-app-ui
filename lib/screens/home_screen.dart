import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/constants/image_path.dart';
import 'package:food_app/screens/item_screen.dart';
import 'package:food_app/widgets/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List foods = [
    ImagePath.burger,
    ImagePath.pizza,
    ImagePath.snacks,
    ImagePath.water,
    ImagePath.burger,
    ImagePath.pizza,
    ImagePath.snacks,
    ImagePath.water,
  ];

  List foodNames = [
    "burger",
    "pizza",
    "snacks",
    "water",
    "burger",
    "pizza",
    "snacks",
    "water",
  ];

  List food2 = [
    ImagePath.burger,
    ImagePath.pizza,
  ];

  List<Color> bgColors = const [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppText(
                        text: "Deliver to",
                        color: Colors.black54,
                        size: 18,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: AppColors.redColor,
                          ),
                          AppText(
                            text: "New York, USA",
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            size: 20,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.redColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(ImagePath.profile),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.whiteColor, width: 3),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    color: const Color(0XFFF3F3F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search your food here...",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.redColor,
                    ),
                    child: const Icon(
                      Icons.filter_list,
                      color: AppColors.whiteColor,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  ImagePath.banner,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: "Categories",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    size: 22,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const AppText(
                      text: "See All",
                      color: AppColors.redColor,
                      fontWeight: FontWeight.bold,
                      size: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: bgColors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          foods[index],
                          height: 80,
                          width: 80,
                        ),
                        AppText(
                          text: foodNames[index],
                          color: Colors.black54,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: "Popular",
                    color: Colors.black,
                    size: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const AppText(
                      text: "See All",
                      size: 17,
                      color: AppColors.redColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 220,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: food2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ItemScreen();
                      }));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      margin: const EdgeInsets.only(
                          left: 15, top: 5, bottom: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.whiteColor,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              food2[index],
                              height: 120,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AppText(
                                      text: "text",
                                      color: Colors.black,
                                      size: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    const SizedBox(height: 5),
                                    const AppText(
                                      text: "Fast Food",
                                      color: Colors.black45,
                                      size: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: AppColors.redColor,
                                          size: 20,
                                        ),
                                        SizedBox(width: 2),
                                        AppText(
                                          text: "4.7",
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        SizedBox(width: 5),
                                        AppText(
                                          text: "941 Ratings",
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.location_on,
                                            color: AppColors.redColor,
                                            size: 20,
                                          ),
                                          SizedBox(width: 2),
                                          AppText(
                                            text: "1 KM",
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: const BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: const AppText(
                                        text: "\$15.89",
                                        color: AppColors.whiteColor,
                                        size: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

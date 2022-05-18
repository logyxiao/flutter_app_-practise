import 'package:flutter/material.dart';
import 'package:maize_app/misc/colors.dart';
import 'package:maize_app/widgets/ResponsiveButton.dart';
import 'package:maize_app/widgets/app_large_text.dart';
import 'package:maize_app/widgets/app_text.dart';

import '../widgets/app_buttons.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/mountain.jpeg'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: 'Yosemite', color: Colors.black),
                        AppLargeText(
                            text: '\$ 250', color: Colors.blue.withOpacity(0.7))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: '中国, 武汉',
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: gottenStars > index
                                  ? AppColors.starColor
                                  : AppColors.textColor1,
                            );
                          }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: '(4.0)',
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    AppLargeText(
                      text: '人数',
                      color: Colors.black,
                      size: 20,
                    ),
                    AppText(
                      text: '请选择与你同行的人数',
                      color: AppColors.mainTextColor,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        bool isActive = selectedIndex == index;

                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              text: (index + 1).toString(),
                              size: 60,
                              color: isActive ? Colors.white : Colors.black54,
                              backgroundColor: isActive
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              borderColor: isActive
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: '介绍',
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    AppText(
                      text: '年龄关乎精神，超乎物质。如果你不在意，年龄也就不重要了。',
                      color: AppColors.mainTextColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    icon: Icons.favorite_border,
                    size: 60,
                    color: AppColors.textColor1,
                    backgroundColor: Colors.white,
                    borderColor:AppColors.textColor1,
                  ),
                  const SizedBox(width: 20,),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

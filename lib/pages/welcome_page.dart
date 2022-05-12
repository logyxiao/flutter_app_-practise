import 'package:flutter/material.dart';
import 'package:maize_app/misc/colors.dart';
import 'package:maize_app/widgets/ResponsiveButton.dart';
import 'package:maize_app/widgets/app_large_text.dart';
import 'package:maize_app/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images =[
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];

  // List Trips = [
  //   {
  //     largeText: 'Mou1',
  //     text:'There are two ways of spreading light : to be the candle or the mirror that reflects it - 1',
  //   },
  //   {
  //     largeText: 'Mou2',
  //     text:'There are two ways of spreading light : to be the candle or the mirror that reflects it - 1',
  //   },
  //   {
  //     largeText: 'Mou3',
  //     text:'There are two ways of spreading light : to be the candle or the mirror that reflects it - 1',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "img/" + images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                  margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Trips'),
                        AppText(text: 'Spreading',size: 30,),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: 'There are two ways of spreading light : to be the candle or the mirror that reflects it. ',
                            color: AppColors.textColor2,
                            size: 14,
                          ),


                        ),
                        SizedBox(height: 40,),
                        ResponsiveButton( width: 110, height: 50,),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index==indexDots ? 25 :8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots ? AppColors.mainColor: AppColors.mainColor.withOpacity(0.3)
                          ),
                        );
                      })
                    )
                  ]
                )
              ),
            );

      }),
    );
  }
}

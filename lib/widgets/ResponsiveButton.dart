import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maize_app/misc/colors.dart';
import 'package:maize_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  double? height;
  ResponsiveButton({
    Key? key,
    this.width = 120,
    this.height = 60,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin: const EdgeInsets.only(left: 1), child: AppText(text: '马上预订', color: Colors.white,)):Container(),
            Image.asset('img/button-one.png'),
          ],
        ),
      ),
    );
  }
}

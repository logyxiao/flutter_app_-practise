import 'package:flutter/cupertino.dart';
import 'package:maize_app/widgets/app_text.dart';


class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  double size;
  String? text = 'text';
  IconData? icon;

  AppButtons({
    Key? key,
    this.text,
    this.icon,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: Center(child: icon != null?Icon(icon,color: color,):AppText(text: text!,color: color,),)
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_farm/widgets/app_text.dart';

import '../misc/colors.dart';

class  AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  bool? IsIcon;
  final Color backgroundColor;
  double size;
  final Color borderColor;

  AppButtons ({Key? key,
    this.IsIcon =false,
    this.text="hi", this.icon,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: IsIcon==false?Center(child: AppText(text: text!, color: color,)):Center(child: Icon(icon, color: color)),
    );
  }
}

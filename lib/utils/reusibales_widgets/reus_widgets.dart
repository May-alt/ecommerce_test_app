

import 'package:flutter/material.dart';
import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';

reusInkwelBtn({
  required String text,
  required void Function()? onTap,
})=>InkWell(
  onTap: onTap,
  child: Container(
    height:45,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: DepOrangeColor
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
      ),
    ),
  ),
);


reusContainIconBtn({
required void Function()? onPressed,
required Widget icon,
}) =>  Container(
  //  padding: EdgeInsets.all(08.0),
  decoration: BoxDecoration(
    color: Cgrey,
    borderRadius: BorderRadius.circular(10.0),
  ),
  child:Center(
    child: IconButton(
      onPressed:onPressed,
      icon: icon,
    ),
  ),
);


Widget reusText({
  required String text,
  required TextStyle? style,
  int? maxLines,
}) =>
    Text(text,
  maxLines:maxLines ,
  style: style
);


NavToAotherPage(context, Widget) => Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) {
      return Widget;
    },
  ),
);

Widget ReusPaddingAll({
  required Widget? child,
}) =>
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: child,
    );

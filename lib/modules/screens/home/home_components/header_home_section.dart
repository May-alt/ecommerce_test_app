
import 'package:ecommerce_test_app/modules/screens/cart/cart_screens.dart';
import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget buildHeaderHomeSection(context) => Container(

  // color: Colors.red.shade200,
  padding: EdgeInsets.all(20.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          reusContainIconBtn(
              onPressed: (){
                NavToAotherPage(context, CartsScreens());
              },
            icon: Icon(CupertinoIcons.shopping_cart),
          ),

          reusContainIconBtn(
            onPressed: (){ },
            icon: Icon(CupertinoIcons.search),
          ),

        ],
      ),

      const  SizedBox(height:20.0,),
      reusText(
        text: "Hello Rocky ",
        style: TextStyle(
            color: appBlackTextColor, fontSize: 20, fontWeight: FontWeight.bold),
      ),

          reusText(
            text: "Lets gets somthings? ",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
        ],
  ),

);
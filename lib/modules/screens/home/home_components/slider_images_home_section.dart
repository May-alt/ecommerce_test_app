import 'package:ecommerce_test_app/data/dynamic_data/app_data.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';

Widget buildSliderImage(context) => SingleChildScrollView(
  physics: BouncingScrollPhysics(),
  scrollDirection: Axis.horizontal,
  child: Row(
      children:sliderModels.map((slideImg) {
        return  Container(
          height: 155,
          width: 320,
          margin: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
            color:slideImg.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text("${slideImg.Text}".toUpperCase(),
                      //   style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),
                      // ),
                      reusText(text: "${slideImg.Text}".toUpperCase(),
                        style: TextStyle(color: appWhiteColor,fontSize: 22,fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10.0,),

                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(05.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: reusText(
                              text: "Get Know",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: DepOrangeColor
                            ),
                          ),


                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${slideImg.imageSlide}"),
                        fit: BoxFit.cover
                    )
                ),

              )
            ],
          ),
        );
      }).toList()
  ),
);

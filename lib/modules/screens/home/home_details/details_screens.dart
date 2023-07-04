import 'package:ecommerce_test_app/data/models/mod_prod/Products.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_test_app/data/dynamic_data/app_data.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';



class DetailsHomeScreens extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String discountPercentage;
  final List<String>? images;


   DetailsHomeScreens({
    Key? key,
     required this.title,
     required this.description,
     required this.price,
     required this.discountPercentage,
     required this.images,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0),
                    )
                ),
                child: Stack(
                  children: [

                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon: Icon(CupertinoIcons.arrow_left,color: Colors.black,),
                    ),



                    Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        // color: Colors.red,

                        child: ImageSlideshow(
                          // height: 100,
                          indicatorColor: Colors.orange,
                          onPageChanged: (value) {
                            debugPrint('Page changed: $value');
                          },
                          autoPlayInterval: 2000,
                          isLoop: true,
                          children: images!.map((img){
                            return Center(
                                child: Image.network(img)
                            );
                          }).toList() ,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 25.0,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    reusText(
                      text: "${title}",
                      style: TextStyle(fontSize: 16,color:appBlackTextColor,fontWeight: FontWeight.bold),
                    ),


                    const SizedBox(height: 10.0,),

                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,size: 18,),
                            Icon(Icons.star,color: Colors.amber,size: 18,),
                            Icon(Icons.star,color: Colors.amber,size: 18,),
                            Icon(Icons.star,color: Colors.amber,size: 18,),
                            Icon(Icons.star,color: Colors.amber,size: 18,),
                          ],
                        ),
                        const SizedBox(width: 20.0,),
                        reusText(
                            text: "(4500 Reviews)",
                          style: TextStyle(fontSize: 14,color:appBlackTextColor),
                        ),


                      ],
                    ),

                    const SizedBox(height: 10.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [

                            reusText(
                                text: "${price}",
                              style: TextStyle(color: appBlackTextColor,fontSize: 20,fontWeight: FontWeight.bold),
                            ),

                            SizedBox(width: 08.0,),

                            reusText(
                                text:"${discountPercentage}",
                              style: TextStyle(color:appGreyColor,fontSize: 14,decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),

                        reusText(
                            text: "Available in stock",
                          style: TextStyle(color: appBlackTextColor,fontSize: 14,),
                        ),


                      ],),

                    const SizedBox(height: 15.0,),


                    reusText(
                        text: "About",
                      style: TextStyle(color:appBlackTextColor,fontSize: 18,fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 10.0,),

                    reusText(
                        text: "${description}",
                      style: TextStyle(fontSize: 16,color:appBlackTextColor),
                    ),

                    const SizedBox(height: 20.0,),


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                          children: tailleNbr.map((taille) {
                            return InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.only(right: 10.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(05.0)
                                ),
                                child: Text("${taille}"),
                              ),
                            );
                          }).toList()
                      ),
                    ),



                    const SizedBox(height: 20.0,),




                   reusInkwelBtn(
                       text: "Add to cart",
                       onTap: (){}
                   ),


                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }


// Center(
//                       child: Container(
//                         height: 150,
//
//                         child: SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child:
//                           Row(
//                             children:images!.map((img){
//                               return Center(
//                                   child: Image.network(img)
//                               );
//                             }).toList() ,
//                           ),
//
//                         ),
//                       ),
//                     ),




}

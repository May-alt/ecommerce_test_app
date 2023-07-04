import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';


class CartsScreens extends StatefulWidget {
  const CartsScreens({Key? key}) : super(key: key);

  @override
  State<CartsScreens> createState() => _CartsScreensState();
}

class _CartsScreensState extends State<CartsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,)
        ),

        title: Text("My Cart", ),
        centerTitle: true,
      ),


      body: SafeArea(
        child: ReusPaddingAll(
          child: Column(
            children: [

            Expanded(
                child:  ListView.separated(
                 physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 130,
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          children: [

                            Container(
                              height: 100, //width: 70,
                              width: MediaQuery.of(context).size.width/6,
                              decoration: BoxDecoration(
                                color: Colors.pink.shade100,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(child: Image.asset("assets/Apple_Watch.png",width: 60,height: 60 ,)),
                            ),

                         const SizedBox(width: 08.0,),

                            Expanded(
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [

                                   reusText(
                                       text: "Apple Watch ser5",
                                     style: TextStyle(color: appBlackTextColor,fontSize: 16),
                                   ),

                                   Row(
                                     children: [
                                       reusText(
                                           text: "Size :",
                                         style: TextStyle(color: appGreyColor,fontSize: 14),
                                       ),
                                       reusText(
                                         text: "36",
                                         style: TextStyle(color: appGreyColor,fontSize: 14),
                                       ),
                                     ],
                                   ),
                                 ],
                               ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        reusText(
                                          text: "£ 562",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: appBlackTextColor),
                                        ),
                                        Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: appWhiteColor,
                                            borderRadius: BorderRadius.circular(15.0)
                                        ),
                                        child: Row(

                                          children: [
                                            IconButton(
                                              onPressed: (){},
                                              icon: Icon(CupertinoIcons.minus,size: 10,color: Colors.orange,),
                                            ),


                                           reusText(
                                               text: " 2 ",
                                             style: TextStyle(fontSize: 12),
                                           ),

                                            IconButton(
                                              onPressed: (){},
                                              icon: Icon(CupertinoIcons.add,size: 10,color: Colors.orange,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),




                              ],),)
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 08.0,),
                    itemCount: 10
                ),
            ),





             const SizedBox(height: 20.0,),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 reusText(
                     text: "Total ",
                   style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18,color: Colors.black),
                 ),
                 reusText(
                   text: "£305",
                   style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18,color: Colors.orange),
                 ),

               ],
             ),
             const SizedBox(height: 20.0,),

              reusInkwelBtn(
                onTap: (){},
                  text:  "Buy Know"),

            ],
          ),
        ),
      ),
    );
  }
}


// Row(
//                                   children: [
//                                     Text("£ 562"),
//
//
//                                     Container(
//                                       height: 25,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                           color: Colors.white,
//                                           borderRadius: BorderRadius.circular(20.0)
//                                       ),
//                                       child: Row(
//                                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                         // crossAxisAlignment: CrossAxisAlignment.center,
//                                        children: [
//                                           IconButton(
//                                               onPressed: (){},
//                                               icon: Icon(CupertinoIcons.minus),
//                                           ),
//                                           Text(" 2 "),
//                                           IconButton(
//                                               onPressed: (){},
//                                             icon: Icon(CupertinoIcons.add),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ]),
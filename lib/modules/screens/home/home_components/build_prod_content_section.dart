import 'package:ecommerce_test_app/data/models/mod_prod/Products.dart';
import 'package:ecommerce_test_app/modules/screens/home/home_details/details_screens.dart';
import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class BuildProductsSection extends StatelessWidget {
  final Products allproducts;
  const BuildProductsSection({Key? key,required this.allproducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: (){
        NavToAotherPage(
            context,
            DetailsHomeScreens(
              title: allproducts.title.toString(),
              price: allproducts.price.toString(),
              description: allproducts.description.toString(),
              discountPercentage: allproducts.discountPercentage.toString(),
              images: allproducts.images,
            ));
      },


      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child:Padding(
          padding: EdgeInsets.all(08.0),
          child:  Column(
            children: [

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(04.0),
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.circular(10),
                      ),

                      child: reusText(
                        text: "30% OFF",
                        style: TextStyle(color: appBlackTextColor,fontSize: 12),
                      )
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(CupertinoIcons.heart_fill,color: Colors.grey,)
                    ),

                  ]
              ),



           allproducts.thumbnail!.isNotEmpty
               ?
             FadeInImage.assetNetwork(
               width: 100,
                 height: 100,
                 placeholder: "assets/loading.gif",
                 image: "${allproducts.thumbnail}",
             ):
              Container(
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("${allproducts.thumbnail}"),
                  ),
                ),
              ),


              const SizedBox(height: 05.0,),

              Expanded(
                child:Container(
                  padding: EdgeInsets.all(08.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      reusText(
                          text: "${allproducts.title}",
                          maxLines: 1,
                        style: TextStyle(color: appGreyColor,fontSize: 12,),
                      ),

                      const SizedBox(height: 05.0,),
                      Row(
                        children: [

                          reusText(
                            text: "\$'${allproducts.price}",
                            style: TextStyle(
                                color: appBlackTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 05.0,),
                          reusText(
                            text: "${allproducts.discountPercentage}",
                            style: TextStyle(
                                color: appGreyColor,
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
                          ),

                        ],),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

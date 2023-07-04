import 'package:ecommerce_test_app/data/dynamic_data/app_data.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:flutter/material.dart';


class BuildCategoryProductHeader extends StatefulWidget {
  const BuildCategoryProductHeader({Key? key}) : super(key: key);

  @override
  State<BuildCategoryProductHeader> createState() => _BuildCategoryProductHeaderState();
}

class _BuildCategoryProductHeaderState extends State<BuildCategoryProductHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(20.0),
      // height: 150,
      // color: Colors.amber,
      child: Column(
        children: [

          buildheaderTitle(),

          buildListProducts(),



        ],
      ),

    );
  }
}

Widget buildheaderTitle() =>  Container(
  margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0,bottom: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      reusText(
          text: "Top Categories",
        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
      ),

      TextButton(
        onPressed: (){},
        child: Text("see all".toUpperCase(),
          style: TextStyle(color: Colors.orange,fontSize: 12),
        ),
      ),

    ],
  ),
);


Widget buildListProducts() => SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  physics: BouncingScrollPhysics(),
  child:Row(
      children:imageListCatg.map((listcat) {
        return InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            width: 50,
            child: Center(
              child: Image.asset("${listcat}",width: 40,height: 40,),
            ),
          ),
        );
      }).toList()
  ),
);
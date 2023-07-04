import 'package:ecommerce_test_app/business_logic/cubit/app_cubit.dart';
import 'package:ecommerce_test_app/data/models/mod_prod/Products.dart';
import 'package:ecommerce_test_app/data/web_services/dio_helper.dart';
import 'package:ecommerce_test_app/modules/screens/home/home_components/build_prod_content_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_conditional_rendering/conditional.dart';


class BuildBodySection extends StatefulWidget {
  const BuildBodySection({Key? key}) : super(key: key);

  @override
  State<BuildBodySection> createState() => _BuildBodySectionState();
}

class _BuildBodySectionState extends State<BuildBodySection> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(

      listener: (context, state) {},
        builder: (context, state) {

        var cubit = AppCubit.get(context);

         List products = AppCubit.get(context).productModel!.products!;

         //Conditional.single
          return Conditional.single(
            context: context,
              conditionBuilder:(context) => cubit.productModel?.products != null &&
                  AppCubit.get(context).productModel!.products!.length != 0,

            fallbackBuilder: (context) => CircularProgressIndicator(color: Colors.orange),

            widgetBuilder: (context) {
              return  GridView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount:AppCubit.get(context).productModel?.products?.length ,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.64,
                ),
                itemBuilder: (context, index) {
                  return BuildProductsSection(allproducts: products![index]);
                },
              );
            },


          );

        },
    );
  }

}




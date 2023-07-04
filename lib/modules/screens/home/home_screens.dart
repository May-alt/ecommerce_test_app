import 'package:ecommerce_test_app/business_logic/cubit/app_cubit.dart';
import 'package:ecommerce_test_app/modules/screens/home/home_components/categories_home_list_section.dart';
import 'package:ecommerce_test_app/modules/screens/home/home_components/slider_images_home_section.dart';
import 'package:ecommerce_test_app/modules/screens/home/home_components/header_home_section.dart';
import 'package:ecommerce_test_app/modules/screens/home/home_components/build_product_section.dart';
import 'package:ecommerce_test_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [

              buildHeaderHomeSection(context),

              buildSliderImage(context),

              BuildCategoryProductHeader(),

              ReusPaddingAll(
                child: Column(
                  children: [
                    BuildBodySection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}

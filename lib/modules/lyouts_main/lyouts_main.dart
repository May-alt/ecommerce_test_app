import 'package:ecommerce_test_app/business_logic/cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';

class LyoutsMain extends StatefulWidget {
  const LyoutsMain({Key? key}) : super(key: key);

  @override
  State<LyoutsMain> createState() => _LyoutsMainState();
}

class _LyoutsMainState extends State<LyoutsMain> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
         listener: (context, state) {},
      builder: (context, state) {
           var cubit = AppCubit.get(context);


        return Scaffold(

          body: cubit.Screnns[cubit.currentIndex],

          bottomNavigationBar:Container(
            height: 50,
            // color: Colors.amber,
            margin: EdgeInsets.all(10),
            child: GNav(
                tabBorderRadius: 15,
                tabActiveBorder: Border.all(color:appWhiteColor, width: 1),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                tabBackgroundColor: Colors.deepOrange.withOpacity(0.2),// navigation bar padding
                gap: 8, // the tab button gap between icon and text
                activeColor:DepOrangeColor, // selected icon and text color
                iconSize: 30, // tab button icon size
                color:appGreyColor,
                onTabChange: (index){
                  cubit.changeScreenIndex(index);
                },
                tabs: [
                  GButton(icon: CupertinoIcons.home, text: 'Home',),
                  GButton(icon: CupertinoIcons.heart_fill, text: 'Likes',),
                  GButton(icon: CupertinoIcons.shopping_cart, text: 'Shop',),
                  GButton(icon: CupertinoIcons.person, text: 'Profile',),


                ]),
          ),
        );
      },
    );
  }
}

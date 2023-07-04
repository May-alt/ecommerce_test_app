import 'package:ecommerce_test_app/business_logic/cubit/app_cubit.dart';
import 'package:ecommerce_test_app/data/web_services/dio_helper.dart';
import 'package:ecommerce_test_app/modules/lyouts_main/lyouts_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';
import 'package:ecommerce_test_app/utils/theme/theme_app.dart';

void main() async{
   await  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit()..getAllProduct(),
      child: BlocConsumer<AppCubit,AppState>(
        listener: (context, state) {},
        builder: (context, state) {

          return MaterialApp(
            title: 'ECommerce-Demo',

            theme:ligthTheme,

            home: LyoutsMain(),
            debugShowCheckedModeBanner: false,
          );
        },
      )
    );
  }
}


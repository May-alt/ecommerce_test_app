import 'package:bloc/bloc.dart';
import 'package:ecommerce_test_app/data/web_services/dio_helper.dart';
import 'package:ecommerce_test_app/modules/screens/Likes/likes_screens.dart';
import 'package:ecommerce_test_app/modules/screens/home/home_screens.dart';
import 'package:ecommerce_test_app/modules/screens/profile/profile_screens.dart';
import 'package:ecommerce_test_app/modules/screens/shop/shop_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:ecommerce_test_app/data/models/mod_prod/Products.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());


  static AppCubit get(context) => BlocProvider.of(context);

  /************************ For get All Products*********************************/


  ProductModel? productModel;

  void getAllProduct() {

    emit(AppLoadingProductsModelstate());

    DioHelper.getData(path:'products').
    then((value){
     print(value.data);
      productModel = ProductModel.fromJson(value.data);

        // print(productModel!.products!.);

        emit(AppSuccessProductsModelstate());
    }).
    catchError((error){
      print("****************************");
      print(error.toString());
      print("****************************");
      emit(AppErrorProductsModelstate(error.toString()));
    });
  }

  /************************ For bottom navigation bar*********************************/
  int currentIndex = 0;

  List<Widget> Screnns = [
     HomeScreens(),
     LikesScreens(),
     ShopScreens(),
     ProfileScreens(),
  ];

  void changeScreenIndex(int index){
    // print("hello");
    currentIndex = index;
    emit(AppChangeBottomNavigationState());
  }



}

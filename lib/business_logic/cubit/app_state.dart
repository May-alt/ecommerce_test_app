part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}


class AppChangeBottomNavigationState extends AppState{}


class AppLoadingProductsModelstate extends AppState{}
class AppSuccessProductsModelstate extends AppState{}
class AppErrorProductsModelstate extends AppState{
  final String error;
  AppErrorProductsModelstate(this.error);
}

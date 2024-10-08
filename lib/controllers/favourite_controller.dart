import 'package:get/get.dart';

class FavouriteController extends GetxController{
  RxList<String> fruitList=['Orange','Apple','Mangoes','Banana'].obs;
  RxList tempFruitList=[].obs;

  addToFavourite(String value){
    tempFruitList.add(value);
  }
  removeFromFavourite(String value){
    tempFruitList.remove(value);
  }
}
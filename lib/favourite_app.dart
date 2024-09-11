import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/controllers/favourite_controller.dart';
class FavouriteApp extends StatefulWidget {
  const FavouriteApp({super.key});

  @override
  State<FavouriteApp> createState() => _FavouriteAppState();
}

class _FavouriteAppState extends State<FavouriteApp> {
FavouriteController controller=Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Favourite App'),
      ),
      body:ListView.builder(
        itemCount: controller.fruitList.length,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            onTap: (){
              if(controller.tempFruitList.contains(controller.fruitList[index].toString())){
                controller.removeFromFavourite(controller.fruitList[index].toString());
              }else{
                controller.addToFavourite(controller.fruitList[index].toString());
              }

            },
            title: Text(controller.fruitList[index].toString()),
            trailing: Obx(()=> Icon(controller.tempFruitList.contains(controller.fruitList[index].toString())?
          Icons.favorite: Icons.favorite_outline,color:  Colors.orange,),)
          ),
        );
      })
    );
  }
}

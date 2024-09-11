import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/controllers/exampletwo_controller.dart';
class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  final ExampletwoController exampletwoController=Get.put(ExampletwoController());


  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Obx(()=>  Container(
            height: 200,
            width: 200,
            color: Colors.orange.withOpacity(exampletwoController.opacity.value),
          ),),
          Obx(()=>SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: Colors.orange,
              overlayColor: Colors.black,
              activeTrackColor: Colors.black,
            ),
            child: Slider(
                value: exampletwoController.opacity.value, onChanged: (value){
              exampletwoController.setOpacity(value);
            }),
          ))


        ],
      ),
    );
  }
}

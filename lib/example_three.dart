import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/controllers/examplethree_controller.dart';
class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  ExamplethreeController _examplethreeController= Get.put(ExamplethreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Example 3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Notification'),
               Obx(()=> Switch(value: _examplethreeController.notification.value, onChanged: (value){
                 _examplethreeController.setNotifications(value);

               })),


              ],
            )
          ],
        ),
      ),
    );
  }
}

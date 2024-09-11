import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/controllers/login_controller.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller=Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Favourite App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            SizedBox(height: 50,),
            Obx((){
              return InkWell(
                onTap: (){
                  controller.loginApi();
                },
                child: Container(
                  height: 45,
                  color: Colors.orange,
                  child: Center(
                    child: controller.loading.value? Text('Login'): CircularProgressIndicator(),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}

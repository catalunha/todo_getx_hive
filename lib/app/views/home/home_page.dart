import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_hive/app/controllers/auth/auth_controller.dart';
import 'package:todo_getx_hive/app/views/core/ui/theme_config.dart';
import 'package:todo_getx_hive/app/views/home/part/pop_menu.dart';

class HomePage extends StatelessWidget {
  AuthController _authController = Get.find();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Olá, ${_authController.user?.displayName ?? "Sem nome"}',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: context.primaryColor),
          backgroundColor: Colors.white,
          elevation: 2,
          actions: [
            PopMenu(),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Todo List do Academia do Flutter',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Versão em GetX',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'com Hive',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}

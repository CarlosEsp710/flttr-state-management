import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:state_management/controllers/user_controller.dart';
import 'package:state_management/models/user.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.find<UserController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                userCtrl.loadUser(
                  User(
                    name: 'Carlos Espejel',
                    age: 20,
                    professions: ['Frontend developer', 'Backend developer'],
                  ),
                );

                Get.snackbar(
                  'Usuairo establecido',
                  userCtrl.user.value.name.toString(),
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.white,
                  boxShadows: [
                    const BoxShadow(color: Colors.black38, blurRadius: 10),
                  ],
                );
              },
            ),
            MaterialButton(
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () => userCtrl.setAge(21),
            ),
            MaterialButton(
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () => userCtrl.addProfession('Fullstack developer'),
            ),
            MaterialButton(
              child: const Text(
                'Cambiar tema',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () => Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark()),
            ),
          ],
        ),
      ),
    );
  }
}

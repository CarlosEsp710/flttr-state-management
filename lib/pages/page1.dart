import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:state_management/controllers/user_controller.dart';
import 'package:state_management/models/user.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Obx(
        () => userCtrl.currentUser.value
            ? InfoUser(user: userCtrl.user.value)
            : const Center(child: Text('No hay información de usuario')),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Get.toNamed('page2'),
      ),
    );
  }
}

class InfoUser extends StatelessWidget {
  final User user;

  const InfoUser({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'General',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('Edad: ${user.age}')),
          const Text(
            'Profesiones',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ...user.professions
              .map((profession) => ListTile(title: Text(profession)))
              .toList(),
        ],
      ),
    );
  }
}

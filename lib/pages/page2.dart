import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:state_management/models/user.dart';
import 'package:state_management/services/user_service.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: userService.currentUser
            ? Text(userService.user!.name)
            : const Text('Page 2'),
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
                final user = User(
                  name: 'Carlos Espejel',
                  age: 20,
                  professions: [
                    'Una profesión.',
                    'Otra profesión.',
                  ],
                );
                userService.user = user;

                print(userService.user!.name);
                print(userService.user!.age);
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
              onPressed: () {
                userService.changeAge(21);

                print(userService.user!.age);
              },
            ),
            MaterialButton(
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                userService.addProfession('Y otra profesión.');

                print(userService.user!.professions);
              },
            ),
          ],
        ),
      ),
    );
  }
}

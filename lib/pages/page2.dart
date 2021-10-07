import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:state_management/cubit/user_cubit.dart';
import 'package:state_management/models/user.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<UserCubit>(context, listen: false);

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
                final user = User(
                  name: 'Carlos Espejel',
                  age: 21,
                  professions: [
                    'Desarrollador frontend',
                    'Desarrollador backend'
                  ],
                );

                cubit.setUser(user);
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
                cubit.setAge(20);
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
                cubit.setProfession('Fullstack Developer');
              },
            ),
          ],
        ),
      ),
    );
  }
}

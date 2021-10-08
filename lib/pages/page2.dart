import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:state_management/bloc/user/user_bloc.dart';
import 'package:state_management/models/user.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UserBloc>(context);

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
                  age: 20,
                  professions: [
                    'Frontend developer',
                    'Backend developer',
                  ],
                );

                bloc.add(ActiveUser(user));
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
              onPressed: () => bloc.add(SetAge(21)),
            ),
            MaterialButton(
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () => bloc.add(AddProfession('Fullstack developer')),
            ),
          ],
        ),
      ),
    );
  }
}

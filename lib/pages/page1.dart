import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:state_management/models/user.dart';
import 'package:state_management/services/user_service.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        actions: [
          if (userService.currentUser)
            IconButton(
              onPressed: () => userService.removeUser(),
              icon: const Icon(Icons.logout),
            ),
        ],
      ),
      body: userService.currentUser
          ? InfoUser(user: userService.user)
          : const Center(child: Text('No hay usuario seleccionado.')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
    );
  }
}

class InfoUser extends StatelessWidget {
  final User? user;

  const InfoUser({
    Key? key,
    this.user,
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
          ListTile(title: Text('Nombre: ${user!.name}')),
          ListTile(title: Text('Edad: ${user!.age}')),
          const Text(
            'Profesiones',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ...user!.professions.map(
            (profession) => ListTile(title: Text(profession)),
          ),
        ],
      ),
    );
  }
}

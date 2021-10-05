import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: const InfoUser(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
    );
  }
}

class InfoUser extends StatelessWidget {
  const InfoUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'General',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          ListTile(title: Text('Nombre: ')),
          ListTile(title: Text('Edad: ')),
          Text(
            'Profesiones',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          ListTile(title: Text('Profesión 1: ')),
          ListTile(title: Text('Profesión 1: ')),
          ListTile(title: Text('Profesión 1: ')),
        ],
      ),
    );
  }
}

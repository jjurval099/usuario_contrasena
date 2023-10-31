import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget { 
  final String username;

  SecondPage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Text("¡Bienvenido, $username! Has iniciado sesión con éxito."),
      ),
    );
  }
}   
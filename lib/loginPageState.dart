import 'package:flutter/material.dart';
import 'package:usuario_contrasena/login.dart';
 
class LoginPageState extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _loggedInUser = "";

  void _login() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    if (username == "usuario" && password == "contraseña") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondPage(username),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Error de inicio de sesión"),
            content: Text("Usuario o contraseña incorrectos."),
            actions: <Widget>[
              TextButton(
                child: Text("Aceptar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla de inicio de sesión"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: "Usuario"),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Contraseña"),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _login,
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
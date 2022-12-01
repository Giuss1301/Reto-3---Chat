import 'package:chat/proceso/autenticacion.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login / Registro"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      "https://www.userlike.com/api/proxy/resize/benefits-of-live-chat/chat-benefits.png?height=720")),
              TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email", suffixIcon: Icon(Icons.email))),
              TextField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                      hintText: "Password", suffixIcon: Icon(Icons.key))),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Autentication().IniciarSesion(
                        email: email.text, password: password.text);
                  },
                  icon: Icon(Icons.login),
                  label: Text("Iniciar Sesión")),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Autentication().CrearUsuario(
                        email: email.text, password: password.text);
                  },
                  icon: Icon(Icons.person_add),
                  label: Text("Registrar Usuario"))
            ],
          ),
        ));
  }
}

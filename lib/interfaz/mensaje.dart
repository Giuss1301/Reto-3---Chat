import 'package:chat/proceso/autenticacion.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class mensajes extends StatefulWidget {
  const mensajes({super.key});

  @override
  State<mensajes> createState() => _mensajesState();
}

class _mensajesState extends State<mensajes> {
  Stream<QuerySnapshot> resp_consulta = FirebaseFirestore.instance
      .collection("Chat")
      .orderBy("tiempo", descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: resp_consulta,
        builder: (context, AsyncSnapshot<QuerySnapshot> respuesta) {
          return ListView.builder(
            itemCount: respuesta.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: (Autentication().usuarios?.email).toString() ==
                        respuesta.data!.docs[index].get("email")
                    ? Colors.green[50]
                    : Colors.red[50],
                child: ListTile(
                  title: Text(
                    respuesta.data!.docs[index].get("mensaje"),
                    textAlign: (Autentication().usuarios?.email).toString() ==
                            respuesta.data!.docs[index].get("email")
                        ? TextAlign.left
                        : TextAlign.right,
                  ),
                  subtitle: Text(
                    respuesta.data!.docs[index].get("email"),
                    textAlign: (Autentication().usuarios?.email).toString() ==
                            respuesta.data!.docs[index].get("email")
                        ? TextAlign.left
                        : TextAlign.right,
                  ),
                ),
              );
            },
          );
        });
  }
}

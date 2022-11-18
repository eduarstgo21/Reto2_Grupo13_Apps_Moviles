import 'package:flutter/material.dart';

class pag4_cercade extends StatefulWidget {
  const pag4_cercade({super.key});

  @override
  State<pag4_cercade> createState() => _pag4_cercadeState();
}

class _pag4_cercadeState extends State<pag4_cercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Roger Stevens"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text("Hernandez Ariza"),
            subtitle: Text("Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text("3016665331"),
            subtitle: Text("Celular"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("rshernandez@uninorte.edu.co"),
            subtitle: Text("Email"),
          )
        ],
      ),
    );
  }
}

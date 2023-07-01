import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  String _name = '';
  String _email = '';
  String _celular = '';
  String _apellido = '';
  String _ciudad = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(25),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Bienvenido a tu perfil",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4c53A5),
                        )),
                  ),
                  
                ],
              ),
            ),
            Container(
              child: CircleAvatar(
                backgroundColor:Color.fromARGB(255, 8, 184, 228),
                backgroundImage: AssetImage(
                  "images/rivi_gg.png",
                ),
              ),
            ),
            Container(
              child: Text(
                "Nicole",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Apellido',
              ),
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ciudad',
              ),
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Celular',
              ),
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Guardar los cambios en el perfil
                _saveChanges();
              },
              child: Text('Guardar cambios'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 45,
        color: Color.fromARGB(255, 8, 184, 228),
        items: [
          Icon(
            Icons.account_circle_sharp,
            size: 30,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "homePage");
            },
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "comentPage");
            },
            child: Icon(
              Icons.chat_bubble_outline,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  void _saveChanges() {
    // Aquí puedes implementar la lógica para guardar los cambios en el perfil,
    // por ejemplo, hacer una llamada a una API o guardar los datos en un almacenamiento local.
    // Puedes acceder a los valores de _name y _email para obtener los datos del perfil actualizados.
    print('Nombre: $_name');
    print('Email: $_email');
    print('Celular $_celular');
    print('Celular $_ciudad');
    print('Celular $_apellido');
  }
}

// ignore: unused_import
import 'dart:io';


// ignore: unnecessary_import
import 'package:fashon_stoke/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LegalAboutPage extends StatefulWidget {
  @override
  _LegalAboutPageState createState() => _LegalAboutPageState();
}

class _LegalAboutPageState extends State<LegalAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black,
          ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Ajustes',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top:24.0,left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Información legal y sobre',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('Condiciones de uso'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      title: Text('Política de privacidad'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      title: Text('Licencia'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      title: Text('Política del vendedor'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      title: Text('Política de devoluciones'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

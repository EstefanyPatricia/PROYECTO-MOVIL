import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fashon_stoke/app_properties.dart';
import 'package:fashon_stoke/pages/faq_page.dart';
import 'package:fashon_stoke/pages/payment/payment_page.dart';
import 'package:fashon_stoke/pages/settings/settings_page.dart';
import 'package:fashon_stoke/pages/tracking_page.dart';
import 'package:fashon_stoke/pages/wallet_page.dart';

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
                      size: 33,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Bienvenido a tu perfil",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4c53A5),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 8, 184, 228),
                backgroundImage: AssetImage(
                  "images/rivi_gg.png",
                ),
              ),
            ),
            Container(
              child: Text(
                "Samantha",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        //color: transparentYellow,
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: Offset(0, 1))
                  ]),
              height: 150,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('images/icons/wallet.png'),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => WalletPage())),
                        ),
                        Text(
                          'Billetera',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('images/icons/truck.png'),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => TrackingPage())),
                        ),
                        Text(
                          'Enviado',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('images/icons/card.png'),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => PaymentPage())),
                        ),
                        Text(
                          'Pago',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('Ajustes'),
              subtitle: Text('Privacidad y cierre de sesión'),
              leading: Image.asset(
                'images/icons/settings_icon.png',
                fit: BoxFit.scaleDown,
                width: 30,
                height: 30,
              ),
              trailing: Icon(Icons.chevron_right, color: yellow),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SettingsPage())),
            ),
            Divider(),
            ListTile(
              title: Text('Servicio de asistencia'),
              subtitle: Text('Help center and legal support'),
              leading: Image.asset('images/icons/support.png'),
              trailing: Icon(
                Icons.chevron_right,
                color: yellow,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Preguntas más frecuentes'),
              subtitle: Text('Preguntas y respuesta'),
              leading: Image.asset('images/icons/faq.png'),
              trailing: Icon(Icons.chevron_right, color: yellow),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => FaqPage())),
            ),
            Divider(),
          ],
        ),
      ),

      //barra de navegacion
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


}

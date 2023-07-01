import 'package:fashon_stoke/pages/CartPage.dart';
import 'package:fashon_stoke/pages/Coment.dart';
import 'package:fashon_stoke/pages/FormComment.dart';
import 'package:fashon_stoke/pages/Homepage.dart';
import 'package:fashon_stoke/pages/ItemPage.dart';
import 'package:fashon_stoke/pages/LoginPage.dart';
import 'package:fashon_stoke/pages/Men.page.dart';
import 'package:fashon_stoke/pages/PerfilPage.dart';
import 'package:fashon_stoke/pages/RegisterPage.dart';
import 'package:fashon_stoke/pages/WomanPages.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        // "/": (context) => Login(),
        "/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "registerPage": (context) => RegisterPage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "perfilPage": (context) => PerfilPage(),
        "comentPage": (context) => ComentPage(),
        "formCommentPage": (context) => FormComment(),
        "menPage": (context) => MenPage(),
        "womanPage": (context) => WomanPage(),

      },
    );
  }
}

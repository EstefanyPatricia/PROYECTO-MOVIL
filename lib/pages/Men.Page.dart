import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fashon_stoke/witgets/MenAppBar.dart';

import 'package:fashon_stoke/witgets/MenWidget.dart';
import 'package:flutter/material.dart';

class MenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MenAppBar(),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            //height: 500,

            child: Column(
              children: [

                Container(
                  //alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Todo para hombres",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                //Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                MenWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color.fromARGB(255, 44, 181, 215),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "perfilPage");
            },
            child: Icon(
              Icons.account_circle_sharp,
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
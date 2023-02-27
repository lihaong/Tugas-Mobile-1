import 'dart:ui';

import 'package:flutter/material.dart';

class Kelompok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Kelompok"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top:60),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(height:8),
                      Text('Gilang Yoenal Marinta',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height:10),
                      Text('123200056',
                        style: TextStyle(
                            fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:50),
            Center(
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(height:8),
                      Text('Hartanta Dwi Putra Sembiring',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height:10),
                      Text('123200037',
                        style: TextStyle(
                            fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height:50),
            Center(
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(height:8),
                      Text('Muhammad Fajar Andikha',
                        style: TextStyle(
                            fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height:10),
                      Text('123200054',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
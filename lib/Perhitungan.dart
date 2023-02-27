

import 'dart:ui';

import 'package:flutter/material.dart';

class Hitung extends StatefulWidget {

  @override
  _HitungState createState() => _HitungState();
}

class _HitungState extends State<Hitung>{
  int nilai1=0;
  int nilai2=0;
   int _hasil=0;

  void jum() {
    setState(() {
      _hasil = nilai1 + nilai2;
    });
  }

  void kur() {
    setState(() {
      _hasil = nilai1 - nilai2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung"),
        centerTitle: true,
      ),
        body:ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20),
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.only(top:20),
                  ),
                   Row(
                    children: <Widget>[
                      Expanded(
                          child: TextField(
                            onChanged: (txt){
                              setState(() {
                                nilai1 = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "Input Angka1",

                                border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(10)
                                ),

                            ),
                          )
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child: TextField(
                            onChanged: (txt){
                              setState(() {
                                nilai2 = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "Input Angka2",
                                border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(10)
                                ),
                            ),
                          )
                      ),
                    ],
                  ),
                   Padding(
                    padding: new EdgeInsets.only(top:30),
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Center(
                        child:Container(
                          margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 20
                          ),

                          child: ElevatedButton(
                            onPressed:jum,
                            child: Text('+',
                              style: TextStyle(
                                  fontSize: 25
                              ),
                            ),
                          ),
                        ) ,

                      ),

                      Center(
                        child:Container(
                          margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 20
                          ),

                          child: ElevatedButton(
                            onPressed: kur,
                            child: Text('-',
                              style: TextStyle(
                                  fontSize: 25
                              ),
                            ),
                          ),
                        ) ,
                      )
                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.only(top:50),
                  ),

                  Center(
                    child: Container(
                      height: 200,
                      width: 500,
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
                          children:  <Widget>[

                            SizedBox(height:12),
                            Text('Hasil',
                              style: TextStyle(
                                  fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),),
                            SizedBox(height: 25,),
                            Text(
                              '$_hasil',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
    );

  }

}
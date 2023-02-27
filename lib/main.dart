import 'package:flutter/material.dart';
import 'package:tugas1tpm/dashboard.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Tugas TPM',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.blue,
    ),
    home: FirstRoute(),
  ));
}

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("Username atau Password Salah."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
TextEditingController getUser = new TextEditingController();
TextEditingController getPass = new TextEditingController();
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image/UPN.png',
                width: 200,
                height: 200,),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: getUser,
                  decoration: InputDecoration(
                    labelText: 'username',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    suffixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: getPass,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue,

                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    String user = 'belajar';
                    String pass = '1234';
                     if (getUser.text == user && getPass.text == pass) {
                     {
                       Route route = MaterialPageRoute(builder: (context) => Menu());
                       Navigator.push(context, route);
                      }
                    } else {
                       showAlertDialog(context);
                     }
                  },
                  child: Text('Login'),
                )
              ],
            )),
      ),
    );
  }
}


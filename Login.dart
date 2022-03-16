import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/image/back1.jpg"),
         fit: BoxFit.cover,
         colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken),
    ),
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ) ,),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Divider(
              thickness: 3,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10), decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(20),
          ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email"),
                  TextField(
                    cursorColor: Colors.orangeAccent,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text("Password"),
                  ),
                  TextField(
                    cursorColor: Colors.orangeAccent,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text("FORGOT PASSWORD?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 10,
                      ),),
                  ),
                  SizedBox(
                    height: 50,
                  ),
              RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
                  ),

                  color: Colors.orange,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white10,
                      ),
                      borderRadius: BorderRadius.circular(50)
                  ),

                  onPressed: (){}
                  ),

                ],
              ),),
          ),
        ],),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animation/Login.dart';
import 'package:animation/SignUp.dart';


class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Hello!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.white54,
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white10,
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height:20,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.white54,
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SignUp()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white10,
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
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


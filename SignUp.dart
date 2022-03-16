import'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

          Container(
            margin: EdgeInsets.all(10), decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(10),
          ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Name"),
                    TextField(
                      cursorColor: Colors.orange,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                      ),
                    ),
                    Text("Address"),
                    TextField(
                      cursorColor: Colors.orangeAccent,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orangeAccent),
                        ),
                      ),
                    ),
                    Text("State"),
                    TextField(
                      cursorColor: Colors.orangeAccent,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                      ),
                    ),
                    Text("Phone number"),
                    TextField(
                      cursorColor: Colors.orangeAccent,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orangeAccent),
                        ),
                      ),
                    ),
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
                      padding: const EdgeInsets.symmetric(vertical: 3),
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
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                        child: Text(
                          "SignUp",
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
                ),
              ),),
          ),
        ],),
        ),
    );
  }
}

import 'package:animation/Welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animation/home_page_enter_animation.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
    @required AnimationController controller,
  }): animation = HomePageEnterAnimation(controller),
        super(key: key);
  final HomePageEnterAnimation animation;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
        animation: widget.animation.controller,
        builder: (context,child)=> _buildAnimation(context,child,size),

      ),

    );
  }

  Widget _buildAnimation(BuildContext context,Widget child,Size size){
    return Column(
      children: <Widget>[
        SizedBox(
          height: 250,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              topBar(widget.animation.barHeight.value),
              circle(
                size,
                widget.animation.avaterSize.value,
              ),
            ],
          ),
        ),
        Padding(padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[


            ],
          ),),

      ],
    );
  }

  Container topBar(double height){
    return Container(
      height: height,
      width: double.infinity,
      color: Colors.deepOrangeAccent,
    );
  }

  Positioned circle(Size size,double animationValue){
    return Positioned(
      top: 200,
      left: size.width / 2 -70,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          animationValue,
          animationValue,
          1.0,
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.orangeAccent,
              ),
            ),
            SizedBox(
              height: 300,
            ),
            FlatButton(

              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome() ));
              },

              color: Colors.blue[500],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white10,
                  ),
                  borderRadius: BorderRadius.circular(60)
              ),
            ),
          ],
        ),
      ),

    );

  }
}


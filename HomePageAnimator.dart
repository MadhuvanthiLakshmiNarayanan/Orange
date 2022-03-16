import 'package:flutter/material.dart';
import 'package:animation/HomePage.dart';

class  HomePageAnimator extends StatefulWidget {
  @override
  _HomePageAnimatorState createState() => _HomePageAnimatorState();
}

class _HomePageAnimatorState extends State<HomePageAnimator>
  with SingleTickerProviderStateMixin{
  AnimationController _controller;
  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: this,
    );
    _controller.forward();
  }
  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }
  Widget build(BuildContext context) {
    return HomePage(
      controller:_controller,
    );
  }
}

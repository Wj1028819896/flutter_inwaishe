import 'package:flutter/material.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter_app/page/main/MainPage.dart';


class SplashPage extends StatefulWidget{

  var splashUrl = "";
  var duration = 1000;

  SplashPage(var splashUrl,var duration){
    this.splashUrl = splashUrl;
    this.duration = duration;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashPageState();
  }

}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(duration: Duration(seconds: 3),vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    animation.addListener((){
      setState(() {

      });
    });

    animation.addStatusListener((AnimationStatus status){
        if(status == AnimationStatus.completed){
          //Navigator.pop(context);
          Navigator.push(context, new MaterialPageRoute(builder:(context) => new MainPage()));
        }
    });
    controller.forward();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Opacity(opacity: animation.value, child: new Container(
        constraints: BoxConstraints.expand(),
        foregroundDecoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.orange,Colors.transparent])),
        child: new Image.network(this.widget.splashUrl,fit: BoxFit.fill)));
  }

}
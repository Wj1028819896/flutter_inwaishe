import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class TestPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    new Future<int>((){
      print(11);
      return 1;
    }).then((res){
      return res+1;
    }).then((res){
      print(res);
      return res * res;
    }).whenComplete((){
      print('cc');
    });
    new Future.delayed(Duration(seconds: 1),(){
      print(12);
    });
    new Future.microtask((){
      print("start");
      int t = 6555555555;
      while(t-- > 0){

      }
      print("end");
    });

    return new Center(child: new Text(""));
  }



}
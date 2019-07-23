import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MultipleAdapte{


  Map<String,String> managers;
  
  getBuilder(){
    return ListView.builder(itemBuilder: null);
  }


}



abstract class MultipleViewManager<T>{

}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter_app/page/home/HomePage.dart';
import 'package:flutter_app/page/test/TestPage.dart';
import 'package:flutter_app/page/videos/VediosPage.dart';
import 'package:flutter_app/page/me/MePage.dart';

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MainPageState();
  }
}

class _MainPageState extends State<MainPage>{

  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list
      ..add(new HomePage())
      ..add(new TestPage())
      ..add(new VideosPage())
      ..add(new MePage());
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle textStyleSelected = TextStyle(fontSize: 12,color: Colors.orange);
    TextStyle textStyleUnSelected = TextStyle(fontSize: 12,color: Colors.grey);

    return new Scaffold(
      appBar: null,
      body:list[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
                icon: Icon(Icons.home,color: (_currentIndex == 0 ? textStyleSelected.color : textStyleUnSelected.color)),
                title: Text("主页",style: (_currentIndex == 0 ? textStyleSelected : textStyleUnSelected))),
            new BottomNavigationBarItem(
                icon: Icon(Icons.fiber_new,color: (_currentIndex == 1 ? textStyleSelected.color : textStyleUnSelected.color)),
                title: Text("评测",style: (_currentIndex == 1 ? textStyleSelected : textStyleUnSelected))),
            new BottomNavigationBarItem(
                icon: Icon(Icons.video_library,color: (_currentIndex == 2 ? textStyleSelected.color : textStyleUnSelected.color)),
                title: Text("视频",style: (_currentIndex == 2 ? textStyleSelected : textStyleUnSelected))),
            new BottomNavigationBarItem(
                icon: Icon(Icons.person,color: (_currentIndex == 3 ? textStyleSelected.color : textStyleUnSelected.color)),
                title: Text("个人",style: (_currentIndex == 3 ? textStyleSelected : textStyleUnSelected)))
            ],
        onTap: (index){
          LogUtil.v("导航键点击->"+ index.toString());
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting),
    );
  }
}
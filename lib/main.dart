import 'package:flutter/material.dart';
import 'package:flutter_app/model/GoodsWidget.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter_app/page/splash/SplashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  init(){
    LogUtil.init(isDebug: true,tag: "INWAISHE");
  }

  @override
  Widget build(BuildContext context) {
    init();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: SplashPage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564124113&di=a80e5a0af2d0fa68f7e87c4ad7e1e919&imgtype=jpg&er=1&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2Fcdd7944a3ed7f9e4e732bdc3bfe6ef895b405b81.jpg",2000),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//      print('$_counter');
//      showDialog(context: this.context,
//          barrierDismissible: true,
//      child: new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")));
//      });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: ListView(children: [
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00")),
//          new GoodsWidget(new Goods("测试","https://flutterchina.club/tutorials/layout/images/lakes.jpg","11.00"))
//        ],),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}

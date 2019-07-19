import 'package:flutter/material.dart';
import 'package:flutter_app/common/CommonBanner.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Widget> pagers = new List();
    Widget page1 = ClipRRect(
      child: new Image.network("https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=60bc5bf8da2a28345ca6300b6bb7c92e/e61190ef76c6a7efcefee3c3f3faaf51f2de667e.jpg",fit: BoxFit.fill),
    borderRadius: BorderRadius.circular(5.0));

    Widget page2 = ClipRRect(
        child: new Image.network("https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=7ae807ebc695d143c576e22343f18296/0b7b02087bf40ad15a962c0b592c11dfa8ecceec.jpg",fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(5.0));

    Widget page3 = ClipRRect(
        child: new Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=e6821d0a831001e9513c120f880f7b06/a71ea8d3fd1f4134d244519d2b1f95cad0c85ee5.jpg",fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(5.0));

    Widget page4 = ClipRRect(
        child: new Image.network("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=691137987,2953731347&fm=11&gp=0.jpg",fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(5.0));

    pagers
      ..add(new Container(margin: EdgeInsets.all(10),child: page1))
      ..add(new Container(margin: EdgeInsets.all(10),child: page2))
      ..add(new Container(margin: EdgeInsets.all(10),child: page3))
      ..add(new Container(margin: EdgeInsets.all(10),child: page4));
    return new ConstrainedBox(constraints: BoxConstraints(maxHeight: 250),
        child: new CommonBanner(pagers, 1000, false));
  }

}
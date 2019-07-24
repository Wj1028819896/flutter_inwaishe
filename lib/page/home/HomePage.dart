import 'package:flutter/material.dart';
import 'package:flutter_app/multiple/MultipleAdapter.dart';
import 'package:flutter_app/model/Goods.dart';
import 'package:flutter_app/model/Banner.dart';
import 'package:flutter_app/model/BannerViewManager.dart';
import 'package:flutter_app/model/GoodsViewManager.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  MultipleAdapter adapter = new MultipleAdapter();
  List<Object> datas = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    adapter.register(new BannerData().runtimeType, new BannerViewManager());
    adapter.register(new Goods("", "", "").runtimeType, new GoodsViewManager());
    adapter.setAllDataList(datas);
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return adapter.getBuilder();
  }

  void loadData() {

    BannerData bannerData = new BannerData();
    bannerData.urls.add("https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=60bc5bf8da2a28345ca6300b6bb7c92e/e61190ef76c6a7efcefee3c3f3faaf51f2de667e.jpg");
    bannerData.urls.add("https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=7ae807ebc695d143c576e22343f18296/0b7b02087bf40ad15a962c0b592c11dfa8ecceec.jpg");
    bannerData.urls.add("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=e6821d0a831001e9513c120f880f7b06/a71ea8d3fd1f4134d244519d2b1f95cad0c85ee5.jpg");
    bannerData.urls.add("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=691137987,2953731347&fm=11&gp=0.jpg");
    datas.add(bannerData);
    for(int i = 0; i < 10;i++){
      Goods goods = new Goods("ss", "aa", "\$1.00");
      datas.add(goods);
    }

  }
}
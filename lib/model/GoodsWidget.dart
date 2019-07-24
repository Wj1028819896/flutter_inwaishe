import 'package:flutter/material.dart';
import 'package:flutter_app/model/Goods.dart';

export 'package:flutter_app/model/GoodsWidget.dart';
export 'package:flutter_app/model/Goods.dart';

class GoodsWidget extends StatefulWidget{

  Goods data;// 商品数据
  GoodsWidget(Goods data){
    this.data = data;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _GoodsWidget(data);
  }
}

class _GoodsWidget extends State<GoodsWidget> with TickerProviderStateMixin{
  Goods _data;
  AnimationController controller;
  CurvedAnimation curve;
  _GoodsWidget(Goods data){
    this._data = data;
    controller = new AnimationController(duration: const Duration(milliseconds: 500),
        vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    controller.forward();
    return new FadeTransition(opacity: curve,child: new Flex(direction: Axis.vertical,crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Image.network(_data.goodsPic,width: 150,height: 150,fit: BoxFit.cover,),
          new Text(_data.goodsName,style: TextStyle(color: Colors.brown,fontSize: 15),),
          new Text('￥' + _data.goodsPrice,style: TextStyle(color: Colors.red,fontSize: 15),)]));
  }
}
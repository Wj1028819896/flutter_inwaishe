export 'package:flutter_app/model/Goods.dart';

///數據實體（商品）
class Goods{

  String goodsName;
  String goodsPic;
  String goodsPrice;

  Goods(this.goodsName, this.goodsPic, this.goodsPrice){
    this.goodsName = goodsName;
    this.goodsPic = goodsPic;
    this.goodsPrice = goodsPrice;
  }

}
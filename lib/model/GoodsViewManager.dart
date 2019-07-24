import 'package:flutter/material.dart';
import 'package:flutter_app/multiple/MultipleAdapter.dart';
import 'package:flutter_app/model/Goods.dart';
import 'package:flutter_app/model/GoodsWidget.dart';

class GoodsViewManager extends MultipleViewManager<Goods>{
  @override
  Widget onBindWidget(BuildContext context, int index, Goods data) {
    // TODO: implement onBindWidget
    return new ConstrainedBox(constraints: BoxConstraints(maxHeight: 50),
        child: new GoodsWidget(data));
  }

}
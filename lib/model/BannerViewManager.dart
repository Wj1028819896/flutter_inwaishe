import 'package:flutter/material.dart';
import 'package:flutter_app/multiple/MultipleAdapter.dart';
import 'package:flutter_app/model/Banner.dart';
import 'package:flutter_app/common/CommonBanner.dart';

class BannerViewManager extends MultipleViewManager<BannerData>{
  @override
  Widget onBindWidget(BuildContext context, int index, BannerData data) {
    // TODO: implement onBindWidget
    List<Widget> pagers = new List();
    for(int i = 0; i < data.urls.length;i++){
      Widget page = ClipRRect(
          child: new Image.network(data.urls[i],fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(5.0));
      pagers.add(new Container(margin: EdgeInsets.all(10),child: page));
    }
    return new ConstrainedBox(constraints: BoxConstraints(maxHeight: 250),
        child: new CommonBanner(pagers, 1000, false));
  }
}
import 'package:flutter/material.dart';
import 'package:common_utils/common_utils.dart';

class CommonBanner extends StatefulWidget{

  var TAG = "CommonBanner";

  List<Widget> pagers = new List();
  var duration = 1000;
  bool isAuto = true;

  CommonBanner( List<Widget> pagers,var duration, bool isAuto){
    this.pagers.add(pagers[pagers.length - 1]);
    this.pagers.addAll(pagers);
    this.pagers.add(pagers[0]);
    this.duration = duration;
    this.isAuto = isAuto;
  }


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CommonBannerState();
  }

}

class _CommonBannerState extends State<CommonBanner>{
  PageController pageController = new PageController(viewportFraction: 0.75, initialPage: 1);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new PageView(
      children: this.widget.pagers,
      scrollDirection: Axis.horizontal,
    controller: pageController,
    onPageChanged: (index){
        onPageChanged(index);
    });
  }

  void onPageChanged(int index){
    LogUtil.v("banner->" + index.toString(),tag: this.widget.TAG);
    if(index == 0){
      pageController.animateToPage(this.widget.pagers.length - 2, duration: Duration(microseconds: 1), curve: Curves.linear);
    }else if(index == (this.widget.pagers.length - 1)){
      pageController.animateToPage(1, duration: Duration(microseconds: 1), curve: Curves.linear);
    }
  }

}
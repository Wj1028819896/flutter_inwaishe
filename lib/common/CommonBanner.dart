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
  PageController pageController;
  TimerUtil timerUtil;
  int crxPosition = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = new PageController(viewportFraction: 0.75, initialPage: 1);
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    stopTimer();
  }

  startTimer(){
    stopTimer();
    if(this.widget.isAuto){
      if(timerUtil == null){
        timerUtil = new TimerUtil(mInterval: this.widget.duration);
        timerUtil.setOnTimerTickCallback((int ms){
          if(ms > 1){
            pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.decelerate);
          }
        });
      }
      timerUtil.startTimer();
    }
  }

  stopTimer(){
    if(null != timerUtil && timerUtil.isActive()){
      timerUtil.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new PageView.builder(
      itemCount: this.widget.pagers.length,
      itemBuilder: (BuildContext con,int index){
        return new Listener(
            child: this.widget.pagers[index]
            ,onPointerDown: (event){
              LogUtil.v("pd");
              stopTimer();
            } // 按下
            ,onPointerUp: (event){
              LogUtil.v("pu");
              startTimer();
            }  // 抬起
            ,onPointerCancel: (event){
              LogUtil.v("pc");
              startTimer();
            }); // 取消
      },
      scrollDirection: Axis.horizontal,
    controller: pageController,
    onPageChanged: (index){
        onPageChanged(index);
    });
  }


  void onPageChanged(int index){
    crxPosition = index;
    LogUtil.v("banner->" + index.toString(),tag: this.widget.TAG);
    if(index == 0){
      pageController.animateToPage(this.widget.pagers.length - 2, duration: Duration(microseconds: 1), curve: Curves.linear);
    }else if(index == (this.widget.pagers.length - 1)){
      pageController.animateToPage(1, duration: Duration(microseconds: 1), curve: Curves.linear);
    }
  }

}
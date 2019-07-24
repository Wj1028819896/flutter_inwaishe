import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MultipleAdapter{


  Map<Type,MultipleViewManager> mManagers = new Map();
  List<Object> mDataList;

  int getItemCount(){
    return mDataList.length;
  }

  Object getData(int index){
    return mDataList[index];
  }

  Type getItemType(int index){
    return mDataList[index].runtimeType;
  }

  setAllDataList(List<Object> list){
    mDataList = list;
  }

  Widget getBuilder(){
    return ListView.builder(
        itemCount: getItemCount(),
        itemBuilder: (BuildContext context, int index){
          return onBindWidget(context, index, getData(index));
    });
  }

  Widget onBindWidget(BuildContext context, int index,Object data){
    if(mManagers.containsKey(data.runtimeType)){
      return mManagers[data.runtimeType].onBindWidget(context,index,data);
    }else {
      throw Exception("你尚未注册对应数据类型的 MultipleViewManager");
    }
  }

  void register(Type type, MultipleViewManager manager) {
    mManagers.putIfAbsent(type, ()=>manager);
  }
}



abstract class MultipleViewManager<T>{

  Widget onBindWidget(BuildContext context, int index,T data);

}
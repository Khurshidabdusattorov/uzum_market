import 'package:flutter/cupertino.dart';

num m_h(context){
  return MediaQuery.of(context).size.height.toDouble();
}

num m_w(context){
  return MediaQuery.of(context).size.width.toDouble();
}

import 'package:flutter/cupertino.dart';

class MyData extends ChangeNotifier
{
  String _img="https://www.pinkvilla.com/files/styles/app-section/public/harry_styles__1.jpeg?itok=J1kHYajJ";
  String _name="AAA";

  String get img => _img;

  set img(String value) {
    _img = value;
    notifyListeners();
  }

  String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }

  void setName(String name,{bool isRefresh=true})
  {
    _name=name;

    if(isRefresh)
    notifyListeners();
  }
  void setImage(String img)
  {
    _img=img;
    notifyListeners();
  }

}
import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String asano="あさのだよ";

  void changeAsanoText() {
    asano="あさのちゃんだよー";
    notifyListeners(); //変更したことを通知する
  }

}













import 'package:flutter/material.dart';

class LogicState extends ChangeNotifier{

  int i=0;

  void increment(){
    i++;
    notifyListeners();
  }

  void decrement(){
    i--;
    notifyListeners();
  }
}


import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier
{
  bool a = false;

  void Changa(bool index)
  {
    a=index;
    notifyListeners();
  }
  bool b = false;

  void Changb(bool index)
  {
    b=index;
    notifyListeners();
  }
  bool c = false;

  void Changc(bool index)
  {
    c=index;
    notifyListeners();
  }
}
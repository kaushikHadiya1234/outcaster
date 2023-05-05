import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SteperProvider extends ChangeNotifier {
  String? path;

  Future<void> PickimageCamera() async {
    ImagePicker img = ImagePicker();
    XFile? xfile = await img.pickImage(source: ImageSource.camera);
    path = xfile!.path;
    notifyListeners();
  }

  Future<void> PickimageGallery() async {
    ImagePicker img = ImagePicker();
    XFile? xfile = await img.pickImage(source: ImageSource.gallery);
    path = xfile!.path;
    notifyListeners();
  }

  int i = 0;

  void Nextstep() {
    if (i < 10) {
      i++;
      notifyListeners();
    }
  }

  void Prestep() {
    if (i > 0) {
      i--;
      notifyListeners();
    }
  }

  void Nextstep1() {
    if (i < 2) {
      i++;
      notifyListeners();
    }
  }

  void Prestep1() {
    if (i > 0) {
      i--;
      notifyListeners();
    }
  }

  DateTime date = DateTime.now();

  void ChangDate(DateTime d1) {
    date = d1;
    notifyListeners();
  }

  String gender = "Male";

  void ChangeGender(String index) {
    gender = index;
    notifyListeners();
  }
}

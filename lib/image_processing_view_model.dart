import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageProcessingViewModelProvider =
    ChangeNotifierProvider((ref) => ImageProcessingViewModel());

class ImageProcessingViewModel extends ChangeNotifier {
  ImageProcessingViewModel();

  ui.Image? _image;
  ui.Image? get image => _image;
  set image(ui.Image? value) {
    _image = value;
    notifyListeners();
  }
}

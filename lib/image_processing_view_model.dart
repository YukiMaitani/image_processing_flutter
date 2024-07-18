import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageProcessingViewModelProvider =
    ChangeNotifierProvider((ref) => ImageProcessingViewModel());

class ImageProcessingViewModel extends ChangeNotifier {
  ImageProcessingViewModel() {
    _init();
  }

  ui.Image? _image;
  ui.Image? get image => _image;
  set image(ui.Image? value) {
    _image = value;
    notifyListeners();
  }

  FragmentShader? _shaderImage;
  FragmentShader? get shaderImage => _shaderImage;

  Future<void> _init() async {
    final program = await FragmentProgram.fromAsset('shaders/image.frag');
    _shaderImage = program.fragmentShader();
    notifyListeners();
  }
}

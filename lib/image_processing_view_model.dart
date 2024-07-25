import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_processing_flutter/models/effect.dart';

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
  FragmentShader? _grayScaleShaderImage;
  FragmentShader? get shaderImage {
    switch (effect) {
      case Effect.mono:
        return _grayScaleShaderImage;
      default:
        return _shaderImage;
    }
  }

  double _brightness = 0;
  double get brightness => _brightness;
  set brightness(double value) {
    _brightness = value;
    notifyListeners();
  }

  Effect _effect = Effect.normal;
  Effect get effect => _effect;
  set effect(Effect value) {
    _effect = value;
    notifyListeners();
  }

  void reset() {
    _image = null;
    _brightness = 0;
    _effect = Effect.normal;
    notifyListeners();
  }

  Future<void> _init() async {
    final program = await FragmentProgram.fromAsset('shaders/image.frag');
    final grayScaleProgram =
        await FragmentProgram.fromAsset('shaders/gray_scale.frag');
    _shaderImage = program.fragmentShader();
    _grayScaleShaderImage = grayScaleProgram.fragmentShader();
    notifyListeners();
  }
}

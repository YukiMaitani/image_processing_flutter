import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageProcessingViewModelProvider =
    ChangeNotifierProvider((ref) => ImageProcessingViewModel());

class ImageProcessingViewModel extends ChangeNotifier {
  ImageProcessingViewModel();
}

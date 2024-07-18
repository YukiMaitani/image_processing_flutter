import 'dart:typed_data';

import 'package:image_picker_web/image_picker_web.dart';

class Pick {
  Future<Uint8List?> pickImage() async {
    return await ImagePickerWeb.getImageAsBytes();
  }
}

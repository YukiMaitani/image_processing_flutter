import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

class Pick {
  Future<Uint8List?> pickImage() async {
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    return await file?.readAsBytes();
  }
}

import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_processing_flutter/util/pick_image/pick_image.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget(this.onImagePicked, {super.key});

  final void Function(ui.Image) onImagePicked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          final data = await Pick().pickImage();
          if (data == null) {
            return;
          }
          final image = await decodeImageFromList(data);
          onImagePicked(image);
        },
        child: const SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_circle_outline, size: 100, color: Colors.grey),
              Gap(20),
              Text('画面をタップして画像を選択',
                  style: TextStyle(color: Colors.grey, fontSize: 20)),
            ],
          ),
        ));
  }
}

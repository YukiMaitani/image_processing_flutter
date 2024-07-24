import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_processing_flutter/components/image_painter.dart';
import 'package:image_processing_flutter/components/image_picker_widget.dart';

import 'image_processing_view_model.dart';

class ImageProcessingPage extends HookConsumerWidget {
  const ImageProcessingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final image = ref
        .watch(imageProcessingViewModelProvider.select((value) => value.image));
    final shaderImage = ref.watch(
        imageProcessingViewModelProvider.select((value) => value.shaderImage));
    final brightness = ref.watch(
        imageProcessingViewModelProvider.select((value) => value.brightness));
    const double imageSizeNonMobile = 800;
    const double imageSizeMobile = 400;
    final isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      body: Column(
          children: image != null && shaderImage != null
              ? [
                  Center(
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth:
                              isMobile ? imageSizeMobile : imageSizeNonMobile,
                          maxHeight:
                              isMobile ? imageSizeMobile : imageSizeNonMobile),
                      child: CustomPaint(
                        painter: ImagePainter(
                            shader: shaderImage,
                            image: image,
                            brightness: brightness),
                        child: AspectRatio(
                          aspectRatio: image.width / image.height,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Slider(
                    value: brightness,
                    onChanged: (value) {
                      ref.read(imageProcessingViewModelProvider).brightness =
                          value;
                    },
                    max: 0.8,
                    min: -0.8,
                  )
                ]
              : [
                  Expanded(
                    child: ImagePickerWidget((image) => ref
                        .read(imageProcessingViewModelProvider)
                        .image = image),
                  ),
                ]),
    );
  }
}

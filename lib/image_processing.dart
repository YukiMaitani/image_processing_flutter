import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_processing_flutter/components/image_picker_widget.dart';

import 'image_processing_view_model.dart';

class ImageProcessingPage extends HookConsumerWidget {
  const ImageProcessingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final image = ref
        .watch(imageProcessingViewModelProvider.select((value) => value.image));
    return Scaffold(
      body: Column(
          children: image != null
              ? [
                  const Placeholder(),
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

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_processing_flutter/components/image_painter.dart';
import 'package:image_processing_flutter/components/image_picker_widget.dart';
import 'package:image_processing_flutter/models/effect.dart';

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
      body: image != null && shaderImage != null
          ? SafeArea(
              child: Column(children: [
                InkWell(
                  onTap: () {
                    ref.read(imageProcessingViewModelProvider).reset();
                  },
                  child: const Align(
                    alignment: Alignment(-0.9, 0),
                    child: Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ),
                const Gap(
                  8,
                ),
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
                          brightness: brightness,
                          effect: ref
                              .watch(imageProcessingViewModelProvider)
                              .effect),
                      child: AspectRatio(
                        aspectRatio: image.width / image.height,
                      ),
                    ),
                  ),
                ),
                const Gap(
                  40,
                ),
                Slider(
                  value: brightness,
                  onChanged: (value) {
                    ref.read(imageProcessingViewModelProvider).brightness =
                        value;
                  },
                  max: 0.8,
                  min: -0.8,
                ),
                const Gap(
                  40,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final effect = Effect.values[index];
                        return InkWell(
                          onTap: () {
                            ref.read(imageProcessingViewModelProvider).effect =
                                effect;
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.deepPurple, width: 2)),
                            child: Text(effect.name),
                          ),
                        );
                      },
                      separatorBuilder: (_, __) => const Gap(20),
                      itemCount: Effect.values.length,
                      shrinkWrap: true),
                ),
              ]),
            )
          : ImagePickerWidget((image) =>
              ref.read(imageProcessingViewModelProvider).image = image),
    );
  }
}

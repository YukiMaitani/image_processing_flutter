import 'package:image_processing_flutter/models/rgb.dart';

enum Effect {
  normal('ノーマル'),
  mono('モノクロ');

  const Effect(this.name);

  final String name;

  Rgb get rgb {
    switch (this) {
      case Effect.normal:
        return const Rgb(red: 1, green: 1, blue: 1);
      case Effect.mono:
        return const Rgb(red: 0.299, green: 0.587, blue: 0.114);
    }
  }
}

import 'package:image_processing_flutter/models/rgb.dart';

enum Effect {
  normal('ノーマル'),
  mono('モノクロ'),
  warm('暖かい'),
  cold('冷たい'),
  natural('自然'),
  ;

  const Effect(this.name);

  final String name;

  Rgb get rgb {
    switch (this) {
      case Effect.normal:
        return const Rgb(red: 1, green: 1, blue: 1);
      case Effect.mono:
        return const Rgb(red: 0.299, green: 0.587, blue: 0.114);
      case Effect.warm:
        return const Rgb(red: 1.2, green: 1.0, blue: 0.8);
      case Effect.cold:
        return const Rgb(red: 0.8, green: 0.9, blue: 1.2);
      case Effect.natural:
        return const Rgb(red: 1.0, green: 1.1, blue: 0.9);
    }
  }
}

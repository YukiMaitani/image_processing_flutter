import 'package:freezed_annotation/freezed_annotation.dart';

part 'rgb.freezed.dart';

@freezed
class Rgb with _$Rgb {
  const factory Rgb({
    required double red,
    required double green,
    required double blue,
  }) = _Rgb;
}

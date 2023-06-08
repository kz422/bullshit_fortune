import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fortune_result.freezed.dart';

@freezed
class FortuneResultModel with _$FortuneResultModel {
  const factory FortuneResultModel({
    required String generalFortune,
    required String loveFortune,
    required String jobFortune,
    required String moneyFortune,
    required String healthFortune,
    required Map<String, dynamic> color,
    @Default(false) bool isGenerated,
  }) = _FortuneResultModel;
}

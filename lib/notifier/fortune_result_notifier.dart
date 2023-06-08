import 'dart:math';

import 'package:bullshit_fortune_telling/model/fortune_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fortuneResultProvider =
    StateNotifierProvider<FortuneResultNotifier, FortuneResultModel?>(
        (ref) => FortuneResultNotifier());

class FortuneResultNotifier extends StateNotifier<FortuneResultModel?> {
  FortuneResultNotifier() : super(null);

  void generateFortuneResult() {
    final Random random = Random();

    final result = FortuneResultModel(
      generalFortune: _fortuneList[random.nextInt(_fortuneList.length)],
      loveFortune: _loveFortuneList[random.nextInt(_loveFortuneList.length)],
      jobFortune: _jobFortuneList[random.nextInt(_jobFortuneList.length)],
      moneyFortune: _moneyFortuneList[random.nextInt(_moneyFortuneList.length)],
      healthFortune:
          _healthFortuneList[random.nextInt(_healthFortuneList.length)],
      color: _luckyColors[random.nextInt(_luckyColors.length)],
      isGenerated: true,
    );

    state = result;
  }
}

List<String> _fortuneList = [
  "運どぉすんだい、よりんことよべらんめえ！",
  "運試ししてみんじゃどべらんめえ！",
  "運勢はおんなじ薬箱じゃなべらんめえ！",
  "運命は巡り巡ってええこともあるじゃろうべらんめえ！",
  "運次第、順風満帆な日が来るんじゃべらんめえ！",
  "運を引っ張ってくるのは自分じゃべらんめえ！",
  "運気は空高く舞う、君に舞い降りることもあるんじゃべらんめえ！",
  "運試しの日、一発逆転のチャンスじゃべらんめえ！",
  "運命の舞台に立ったとき、何が起こるかわからんことよべらんめえ！",
  "運は天にあり、地にあり、君の中にもあるんじゃよべらんめえ！",
];

List<String> _loveFortuneList = [
  "恋ってのはおっつけてみなんぐせえんことよべらんめえ！",
  "恋は風、吹くものに任せるんじゃべらんめえ！",
  "恋路は曲がり道、ひょっこり驚くこともあるんじゃよべらんめえ！",
  "恋の花が咲くとき、世界はもっと鮮やかになるんじゃべらんめえ！",
  "恋は踊り、リズムを感じるもんじゃべらんめえ！",
  "恋する心には止まるという言葉がないんじゃよべらんめえ！",
  "恋の予感が胸に響くとき、新たな旅路が始まるんじゃべらんめえ！",
  "恋路には驚きと感動が待っておるんじゃよべらんめえ！",
  "恋の行方は、運命のいたずらに左右されんべらんめえ！",
  "恋にはドキドキと胸騒ぎがつきものじゃべらんめえ！",
];

List<String> _moneyFortuneList = [
  "お金の使い方には気をつけんべらんめえ！",
  "お金はめんどくさいもんじゃけん、上手に使いましょうべらんめえ！",
  "金運は時と共にやってくるんじゃべらんめえ！",
  "財布の中には常に幸せが詰まっておるんじゃべらんめえ！",
  "お金のために命を捧げることはせんべらんめえ！",
  "お金は大切じゃけん、適度に使うことが大事じゃべらんめえ！",
  "金運の波に乗って、成功への道を歩むんじゃべらんめえ！",
  "お金は流れるものじゃけん、循環させましょうべらんめえ！",
  "お金の使い道は自分次第、賢く使いましょうべらんめえ！",
  "お金は幸せの一部じゃけん、大切に扱うことが大事じゃべらんめえ！",
];

List<String> _jobFortuneList = [
  "仕事は努力と継続の積み重ねじゃべらんめえ！",
  "職場では素直な気持ちを持つことが大切じゃべらんめえ！",
  "仕事に情熱を持って取り組むことが成功への道じゃべらんめえ！",
  "頑張りが報われるとき、成果が得られるんじゃべらんめえ！",
  "仕事は挑戦の連続じゃけん、諦めずに頑張りましょうべらんめえ！",
  "自分の能力を信じて、新たなステージに進もうべらんめえ！",
  "仕事の成果は自分の努力と結びつくんじゃべらんめえ！",
  "職場での人間関係は大事じゃけん、コミュニケーションを大切にしましょうべらんめえ！",
  "仕事は自己成長の場じゃけん、常に学び続けましょうべらんめえ！",
  "仕事の道は険しいかもしれんべらんめえ！、だからこそ一歩ずつ進んでいこうべらんめえ！",
];

List<String> _healthFortuneList = [
  "健康は一番の宝物じゃべらんめえ！",
  "体は正直じゃけん、健康管理に気をつけましょうべらんめえ！",
  "健康な体こそが、幸せな日々を過ごす基盤じゃべらんめえ！",
  "健康は日々の生活習慣から生まれるんじゃべらんめえ！",
  "体の声に耳を傾け、適度な休息を取ることが大事じゃべらんめえ！",
  "健康に気をつけることは、自分自身を大切にすることじゃべらんめえ！",
  "健康な体は心の安定にも繋がるんじゃべらんめえ！",
  "適度な運動とバランスの取れた食事が健康を保つ秘訣じゃべらんめえ！",
  "健康でいることは、目標を達成するためのエネルギー源じゃべらんめえ！",
  "健康な体こそが、日々の生活を楽しむための土台じゃべらんめえ！",
];

List<Map<String, dynamic>> _luckyColors = [
  {
    'name': '紅緋（べにひ）',
    'code': const Color(0xFFAB3B3A),
  },
  {
    'name': '紺（こん）',
    'code': const Color(0xFF0C2066),
  },
  {
    'name': '黄土色（おうどいろ）',
    'code': const Color(0xFFB98C45),
  },
  {
    'name': '縹（はなだ）',
    'code': const Color(0xFF2A4E87),
  },
  {
    'name': '浅葱色（あさぎいろ）',
    'code': const Color(0xFF00A3AF),
  },
  {
    'name': '藍色（あいいろ）',
    'code': const Color(0xFF0F2350),
  },
  {
    'name': '白緑（びゃくろく）',
    'code': const Color(0xFF91AD70),
  },
  {
    'name': '朱色（しゅいろ）',
    'code': const Color(0xFFE63E32),
  },
  {
    'name': '柳煤竹（やなぎすすたけ）',
    'code': const Color(0xFF7E936F),
  },
  {
    'name': '瑠璃色（るりいろ）',
    'code': const Color(0xFF004B98),
  },
];

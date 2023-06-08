import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/fortune_result_notifier.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isGenerated = ref.watch(fortuneResultProvider)?.isGenerated ?? false;
    final brightness = ThemeData.estimateBrightnessForColor(
        ref.watch(fortuneResultProvider)?.color['code'] ?? Colors.white);
    final textColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;

    return SafeArea(
      child: Scaffold(
        backgroundColor:
            ref.watch(fortuneResultProvider)?.color['code'] ?? Colors.white,
        appBar: AppBar(
          title: Text("べらんめえ占い",
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  child: InkWell(
                      splashColor: Colors.amber,
                      onTap: () {
                        ref
                            .read(fortuneResultProvider.notifier)
                            .generateFortuneResult();
                      },
                      child: Image.asset("assets/images/edokko.jpg")),
                ),
                Text(
                  "占うかい？俺をたっぷしてみい",
                  style: TextStyle(color: textColor),
                ),
                const SizedBox(height: 10),
                isGenerated ? const ResultWidget() : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResultWidget extends ConsumerWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(fortuneResultProvider);

    return Container(
      color: result?.color['code'] ?? Colors.white,
      child: Column(
        children: [
          ResultContainer(title: "総合運", result: result?.generalFortune ?? ""),
          const SizedBox(height: 10),
          ResultContainer(title: "恋愛運", result: result?.loveFortune ?? ""),
          const SizedBox(height: 10),
          ResultContainer(title: "仕事運", result: result?.jobFortune ?? ""),
          const SizedBox(height: 10),
          ResultContainer(title: "金運", result: result?.moneyFortune ?? ""),
          const SizedBox(height: 10),
          ResultContainer(title: "健康運", result: result?.healthFortune ?? ""),
          const SizedBox(height: 10),
          ResultContainer(title: "めでた色", result: result?.color['name'] ?? ""),
        ],
      ),
    );
  }
}

class ResultContainer extends ConsumerWidget {
  const ResultContainer({super.key, required this.title, required this.result});

  final String title;
  final String result;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ThemeData.estimateBrightnessForColor(
        ref.watch(fortuneResultProvider)?.color['code'] ?? Colors.white);

    final textColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
          Text(result, style: TextStyle(fontSize: 20, color: textColor)),
        ],
      ),
    );
  }
}

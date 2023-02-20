import 'package:flutter/material.dart';

import '../models/button1.dart';

class explainscreen extends StatelessWidget {
  const explainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
      ),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Tara",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline1!.color,
                      fontFamily: "Solway",
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "모델과의 신체 사이즈를\n비교해보세요",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline1!.color,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple.shade200,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ), //계속하기 버튼 위치 얼마나 내릴지 사이즈박스 크기 숫자가 클수록 내려감
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button1(
                      bgColor: Theme.of(context).textTheme.headline1!.color,
                      text: "계속하기",
                      textColor: Colors.white,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

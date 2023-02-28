import 'package:avatar3_flutter/screens/screen_selcet_image.dart';
import 'package:flutter/material.dart';

class TabAvatar extends StatelessWidget {
  const TabAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /* Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: const Center(
            child: Text(
              'STEP 2. 엣지패널 확인',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ),*/
        const SizedBox(height: 20.0),
        const Center(
          child: Image(
            image: AssetImage(
              'assets/images/avatar removebg.png',
            ),
            height: 500.0,
            width: 600.0,
          ),
        ),
        const SizedBox(height: 50.0),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>
                          const SelectImagepage())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.black,
                side: const BorderSide(color: Colors.transparent)),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.055,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  // Image.asset('assets/images/kakao1.png', width: 40, height: 40), 이미지 삽입시 //지우기
                  Text(
                    '아바타 만들기',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    )));
  }
}

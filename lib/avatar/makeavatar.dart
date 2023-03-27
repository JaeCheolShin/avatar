import 'package:avatar3_flutter/avatar/bodyview.dart';
import 'package:avatar3_flutter/avatar/faceview.dart';
import 'package:avatar3_flutter/screens/screen_bodyguide.dart';
import 'package:avatar3_flutter/screens/screen_finalbody.dart';
import 'package:flutter/material.dart';

class MakeAvatar extends StatelessWidget {
  const MakeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('아바타 생성하기')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50), //모서리를 둥글게
                        border: Border.all(color: Colors.black12, width: 3)),
                    width: 150,
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                    child: const Center(child: Text("Face")),
                  ),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50), //모서리를 둥글게
                        border: Border.all(color: Colors.black12, width: 3)),
                    width: 150,
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                    child: const Center(child: Text("Body")),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FaceView()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                      width: 150,
                      height: 250,
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                    ),
                  ),
                ),
                /*const SizedBox(
                  width: 30,
                ),*/
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BodyView()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                      width: 150,
                      height: 250,
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const FinalBodyScreen())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.048,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    // Image.asset('assets/images/kakao1.png', width: 40, height: 40), 이미지 삽입시 //지우기
                    Text(
                      '아바타 미리보기',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const BodyGuideView())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.048,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    // Image.asset('assets/images/kakao1.png', width: 40, height: 40), 이미지 삽입시 //지우기
                    Text(
                      '이미지 업로드 가이드',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

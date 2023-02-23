import 'package:flutter/material.dart';

import '../login_Page/login_avatar.dart';
import 'screen_index.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

//임시로 모든 버튼들을 index로 이동시킴

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Spacer(),
            Image.asset(
              'assets/images/logo.png',
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const loginavatar())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.551,
                height: MediaQuery.of(context).size.height * 0.075,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png',
                        width: 50, height: 50),
                    const Text(
                      '  아바타로 시작하기',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const IndexScreen())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.grey.shade400,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.551,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/naver1.png',
                        width: 40, height: 40),
                    const Text(
                      '네이버로 시작하기',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const IndexScreen())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.grey.shade400,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.551,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/kakao1.png',
                        width: 40, height: 40),
                    const Text(
                      '카카오로 시작하기',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const IndexScreen())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.grey.shade400,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.551,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/apple1.png',
                        width: 40, height: 40),
                    const Text(
                      '애플로 시작하기',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const IndexScreen())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.grey.shade400,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.551,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/google1.png',
                        width: 35, height: 35),
                    const Text(
                      '구글로 시작하기',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 2,
              // height: 30,
              color: Colors.grey,
              indent: 30,
              endIndent: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const IndexScreen()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.grey, width: 0.5)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '체험하기',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            /* const SizedBox(
              height: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 125),
              child: Divider(
                thickness: 2,
                // height: 30,
                color: Colors.grey,
                indent: 30,
                endIndent: 150,
              ),
            ), 아래서 구역을 나누는 선 하나
           */
            const SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}

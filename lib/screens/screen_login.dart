import 'package:avatar3_flutter/screens/screen_index.dart';
import 'package:avatar3_flutter/login_page/login_avatar.dart';
import 'package:avatar3_flutter/screens/screen_onboarding.dart';
import 'package:flutter/material.dart';

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
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 50,
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
                      borderRadius: BorderRadius.circular(17)),
                  backgroundColor: Colors.grey.shade300,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.51,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/logo.png',
                        width: 50, height: 50),
                    const Text(
                      'TAARA로 시작하기',
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
                  backgroundColor: Colors.grey.shade300,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.51,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/naver1.png',
                        width: 40, height: 40),
                    const Text(
                      '네이버로 시작하기',
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
                  backgroundColor: Colors.grey.shade300,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.51,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/kakao1.png',
                        width: 40, height: 40),
                    const Text(
                      '카카오로 시작하기',
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
                  backgroundColor: Colors.grey.shade300,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.51,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/apple1.png',
                        width: 40, height: 40),
                    const Text(
                      '애플로 시작하기',
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
                  backgroundColor: Colors.grey.shade300,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.51,
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/google1.png',
                        width: 35, height: 35),
                    const Text(
                      '구글로 시작하기',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '체험하기',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return const AppGuideScreen();
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.grey, width: 0.5)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '앱 가이드',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}

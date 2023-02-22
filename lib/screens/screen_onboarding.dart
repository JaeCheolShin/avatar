import 'package:avatar3_flutter/login_Page/login_avatar.dart';
import 'package:avatar3_flutter/screens/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4; //페이지 장수
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 9.0,
      width: isActive ? 20.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromARGB(255, 122, 82, 210)
            : Colors.grey.shade500, //점들 색깔
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 702.0, //페이지 하단 동그라미들의 높이(전체적인 높이)
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 1. 검색후, 찜하기',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding1.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text('스타일요소(옷, 악세서리, 헤어스타일)를',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text('검색한다음, 찜합니다',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                            const SizedBox(height: 25.0),
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
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    // color: Colors.yellow
                                    color: Colors.white),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 2. 엣지패널 확인',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding2.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '마음에 드는 스타일 요소들을 찜한다음',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '엣지패널에 가져다두고!',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 3. 아바타 만들기',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding3.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '본인의 얼굴과 신체사진을 업로드 해서',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '아바타를 만들고,',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 4.Darg & Drop',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding4.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text('엣지패널에서 Darg & Drop 하면',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text('나만의 아바타 스타일링 완성!!',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            const LoginScreen())); //이부분을 수정하면 된다 어느 화면으로 넘어갈지
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.grey.shade400,
                  side: const BorderSide(color: Colors.transparent)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png',
                        width: 50, height: 50),
                    const Text(
                      '  로그인하기',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            )
          : const Text(''),
    );
  }
}

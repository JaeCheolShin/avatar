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
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 7.0,
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
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.black,
                        side:
                            const BorderSide(color: Colors.black)), //skip버튼 배경색
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  const LoginScreen())); //skip버튼이 어디로 갈지
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white, //skip버튼 폰트색
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 680.0, //페이지 하단 동그라미들의 높이(전체적인 높이)
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
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 1. 검색후, 찜하기',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const Center(
                              child: Image(
                                image:
                                    AssetImage('assets/images/onboarding1.png'),
                                height: 520.0,
                                width: 600.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                    '스타일요소(옷, 악세서리, 헤어스타일)를 검색한다음, 찜합니다',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 2. 엣지패널 확인',
                                  style: TextStyle(
                                      fontSize: 25,
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
                                height: 520.0,
                                width: 600.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '마음에 드는 스타일 요소들을 찜한다음, 엣지패널에 가져다두고!',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 3. 아바타 만들기',
                                  style: TextStyle(
                                      fontSize: 25,
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
                                height: 520.0,
                                width: 600.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: const Center(
                                child: Text(
                                  '본인의 얼굴과 신체사진을 업로드 해서 아바타를 만들고',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: const Center(
                                child: Text(
                                  'STEP 4. Drag & Drop',
                                  style: TextStyle(
                                      fontSize: 25,
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
                                height: 520.0,
                                width: 600.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                    '엣지패널에서 Darg & Drop 하면,나만의 아바타 스타일링 완성!!',
                                    style: TextStyle(
                                        fontSize: 15,
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
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.centerRight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.black, //next버튼 배경색
                                side: const BorderSide(color: Colors.black)),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 33.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const Text(''),
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
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black)), //로그인하기 배경색
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.058,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png',
                        width: 50, height: 50),
                    const Text(
                      '로그인하기',
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

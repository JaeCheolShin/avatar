import 'package:avatar3_flutter/screens/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 5; //페이지 장수
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
      height: 8.0,
      width: isActive ? 20.0 : 8.0,
      decoration: BoxDecoration(
        color:
            isActive ? Colors.pink.shade200 : const Color(0xFF7B51D3), //점들 색깔
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
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () => print('Skip'),
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 600.0,
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
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/logo.png',
                                ),
                                height: 190.0,
                                width: 190.0,
                              ),
                            ),
                            const SizedBox(height: 250.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/from avatar removebg.png',
                                  ),
                                  height: 50.0,
                                  width: 200.0,
                                ),
                              ),
                            ),
                            /*SizedBox(height: 15.0),
                            Text(
                              '하파타카차자아사바마라다나가',
                            ),*/
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding1.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 70.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '스타일요소(옷이나 악세사리, 헤어스타일 같은 요소들) 검색한다음, 찜합니다',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            /*SizedBox(height: 15.0),
                            Text(
                              '하파타카차자아사바마라다나가',
                            ),*/
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding2.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 70.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '마음에 드는 스타일 요소들을 찜한다음) 엣지패널에 가져다두고!',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            /*SizedBox(height: 15.0),
                            Text(
                              '하파타카차자아사바마라다나가',
                            ),*/
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding3.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 70.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '본인의 얼굴과 신체사진을 업로드 해서 아바타를 만들고,  ',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            /*SizedBox(height: 15.0),
                            Text(
                              '하파타카차자아사바마라다나가',
                            ),*/
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding4.png',
                                ),
                                height: 400.0,
                                width: 500.0,
                              ),
                            ),
                            const SizedBox(height: 70.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: const Center(
                                child: Text(
                                  '엣지패널에서 Darg & Drop 하면 나만의 아바타 스타일링 완성!! ',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            /*SizedBox(height: 15.0),
                            Text(
                              '하파타카차자아사바마라다나가',
                            ),*/
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
                          alignment: FractionalOffset.bottomRight,
                          child: ElevatedButton(
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
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
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
                  backgroundColor: Colors.grey.shade200,
                  side: const BorderSide(color: Colors.transparent)),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(color: Colors.grey.shade200),
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

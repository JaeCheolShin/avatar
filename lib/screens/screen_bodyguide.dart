import 'package:avatar3_flutter/tab/tab_avatar.dart';
import 'package:flutter/material.dart';

class BodyGuideView extends StatefulWidget {
  const BodyGuideView({Key? key}) : super(key: key);

  @override
  State<BodyGuideView> createState() => _GuildViewState();
}

class _GuildViewState extends State<BodyGuideView> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  // this list holds all the pages
  // all of them are constructed in the very end of this file for readability
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
    const PageFour()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // the page view
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          // Display the dots indicator
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 80,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 6,
                              // check if a dot is connected to the current page
                              // if true, give it a different color
                              backgroundColor: _activePage == index
                                  ? Colors.purple
                                  : Colors.grey,
                            ),
                          ),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              width: 200,
              child: Text(
                '주의 : 정확한 측정을 위해서 타이트한 옷과 머리를 묶어 몸매가 드러날 수 있게 해주세요. 옷 색상이 배경 및 물건과 겹치지 않도록 확인해주세요.',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              width: 200,
              child: Text(
                '스마트폰을 바닥에 놓고 80도 가이드에 맞추어 벽에 기대어 세웁니다.',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const Text(
              '가이드에 맞추어 서면 3초 후 자동 촬영됩니다.',
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '직접 촬영하시거나, 갤러리에서 사진을 가져옵니다.',
          ),
          ElevatedButton(
            onPressed: () async {
              TabAvatar;
            },
            child: const Text("돌아가기"),
          ),
        ],
      ),
    );
  }
}

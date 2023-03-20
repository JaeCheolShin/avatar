import 'package:avatar3_flutter/avatar/makeavatar.dart';
import 'package:flutter/material.dart';

class TabAvatar extends StatelessWidget {
  const TabAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          '내 아바타',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                child: Image.asset(
                  'assets/images/avatar removebg.png',
                  width: 400,
                  height: 500,
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MakeAvatar()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  width: 250,
                  height: 50,
                  child: const Center(
                    child: Text(
                      '아바타 생성하기',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

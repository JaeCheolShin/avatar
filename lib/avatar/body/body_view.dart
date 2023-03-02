import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyView extends StatelessWidget {
  const BodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 3D 모델
            Text("3D 모델"),
            Image.asset('assets/images/logo.png', height: 100, width: 100,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // gltf, glb, obj 파일형식 뷰어
                ElevatedButton(
                  onPressed: () async {
                    Get.toNamed('/body/create');
                  },
                  child: Text("신체 생성하기"),
                ),
                TextButton(
                  onPressed: () async {
                    Get.back();
                    // 로딩이 필요함
                  },
                  child: Text("돌아가기"),
                ),

              ],
            ),
          ],
        ),
      ),

    );
  }
}

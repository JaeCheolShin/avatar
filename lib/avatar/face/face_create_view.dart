import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FaceCreateView extends StatefulWidget {
  const FaceCreateView({Key? key}) : super(key: key);

  @override
  State<FaceCreateView> createState() => _FaceCreateViewState();
}

class _FaceCreateViewState extends State<FaceCreateView> {

  File? _image;
  final picker = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    final image = await picker.pickImage(source: imageSource);

    setState(() {
      _image = File(image!.path); // 가져온 이미지를 _image에 저장
    });
  }

  // 이미지를 보여주는 위젯
  Widget showImage() {
    return Container(
        color: const Color(0xffd0cece),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.width,
        child: Center(
            child: _image == null
                ? Text('No image selected.')
                : Image.file(File(_image!.path))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // gltf, glb, obj 파일형식 뷰어
                    Text("정면"),
                    showImage(),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            getImage(ImageSource.camera);
                          },
                          child: Icon(Icons.add_a_photo),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            getImage(ImageSource.gallery);
                          },
                          child: Icon(Icons.wallpaper),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // gltf, glb, obj 파일형식 뷰어
                    Text("측면"),
                    showImage(),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            getImage(ImageSource.camera);
                          },
                          child: Icon(Icons.add_a_photo),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            getImage(ImageSource.gallery);
                          },
                          child: Icon(Icons.wallpaper),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              // height: 30,
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // gltf, glb, obj 파일형식 뷰어
                ElevatedButton(
                  onPressed: () async {
                    Get.toNamed('/face/guide');
                  },
                  child: Text("얼굴 촬영 가이드"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    //Get.toNamed('/face');
                    // 로딩이 필요함
                  },
                  child: Text("생성"),
                ),
                TextButton(
                  onPressed: () async {
                    Get.back();
                    // 로딩이 필요함
                  },
                  child: Text("돌아가기"),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}

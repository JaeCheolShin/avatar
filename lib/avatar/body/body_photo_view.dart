import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'dart:io';

class BodyPhotoView extends StatefulWidget {
  const BodyPhotoView({Key? key}) : super(key: key);

  @override
  State<BodyPhotoView> createState() => _BodyPhotoViewState();
}

class _BodyPhotoViewState extends State<BodyPhotoView> {
  File? _image;
  final picker = ImagePicker();
  String? message = "";

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
                ? const Text('No image selected.')
                : Image.file(File(_image!.path))));
  }

  uploadImage() async {
    final request = http.MultipartRequest(
        "POST", Uri.parse("https://ac1e-218-235-241-37.jp.ngrok.io/upload"));
    final headers = {"Content-type": "multipart/form-data"};

    request.files.add(http.MultipartFile(
        'image', _image!.readAsBytes().asStream(), _image!.lengthSync(),
        filename: _image!.path.split("/").last));

    request.headers.addAll(headers);
    final response = await request.send();
    http.Response res = await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body);
    message = resJson['message'];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // 화면 세로 고정
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
        backgroundColor: const Color(0xfff4f3f9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 25.0),
            showImage(),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // 카메라 촬영 버튼
                FloatingActionButton(
                  tooltip: 'pick Image',
                  onPressed: () {
                    getImage(ImageSource.camera);
                  },
                  child: const Icon(Icons.add_a_photo),
                ),

                // 갤러리에서 이미지를 가져오는 버튼
                FloatingActionButton(
                  tooltip: 'pick Image',
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                  child: const Icon(Icons.wallpaper),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () async {
                uploadImage();
              },
              child: const Text("완료"),
            ),
          ],
        ));
  }
}

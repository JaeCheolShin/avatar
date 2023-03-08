import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FaceView extends StatefulWidget {
  const FaceView({super.key});

  @override
  FaceViewScreenState createState() {
    return FaceViewScreenState();
  }
}

class FaceViewScreenState extends State<FaceView> {
  List<String> _picImageNames = [];
  String? mainImageFile;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: Column(
          children: [
            _selectedImage(),
            _pickedOrCameraButton(),
            _pickedImageList()
          ],
        ),
      ),
    );
  }

  Widget _pickedImageList() {
    return Expanded(
      child: FutureBuilder<List<File>>(
          future: getFileImages(),
          builder: (context, snapshot) {
            return Container(
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                ),
                children: snapshot.data != null
                    ? List.generate(
                        snapshot.data!.length,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              mainImageFile =
                                  snapshot.data!.elementAt(index).path;
                            });
                          },
                          child: Image.file(
                            snapshot.data!.elementAt(index),
                            fit: BoxFit.cover,
                            scale: 0.1, // 메모리 절약을 위해
                          ),
                        ),
                      )
                    : [],
              ),
            );
          }),
    );
  }

  Widget _pickedOrCameraButton() {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {
                _takePhoto();
              },
              icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {
                getPickImage();
              },
              icon: const Icon(Icons.picture_in_picture_alt)),
        ],
      ),
    );
  }

  Widget _selectedImage() {
    return Expanded(
      child: Container(
        color: Colors.black,
        width: double.infinity,
        child: mainImageFile != null
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: Image.file(
                  File(mainImageFile!),
                  fit: BoxFit.cover,
                ),
              )
            : const FlutterLogo(),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text("아바타 만들기"),
      centerTitle: true,
      actions: [
        TextButton(
            onPressed: () {},
            child: const Text(
              "다음",
              style: TextStyle(fontSize: 20),
            )),
      ],
    );
  }

  void _takePhoto() async {
    PickedFile? pickFile =
        await ImagePicker().getImage(source: ImageSource.camera);

    if (pickFile != null) {
      setState(() {
        mainImageFile = pickFile.path;
      });

      final result = await ImageGallerySaver.saveFile(mainImageFile!);
      print("이미지 저장됨 $result");
    }
  }

  void getPickImage() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, imageQuality: 1);

    if (pickedFile != null) {
      File? image = File(pickedFile.path);
      _fileNameMemSave(image.path);
    } else {
      print('No image selected.');
    }
  }

  _fileNameMemSave(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _picImageNames = [..._picImageNames, value];
    });
    // 이 부분은 실제로는 디비에 저장해야 한다.

    await prefs.setStringList('picked', _picImageNames);
  }

  Future<List<String>> _fileNameMemSelect() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // 이 부분은 실제로는 디비에서 가져와야 한다.
    return prefs.getStringList("picked")!;
  }

  Future<List<File>> getFileImages() async {
    List<String> imageFileList = await _fileNameMemSelect();
    List<File> files = imageFileList.map((e) => File(e)).toList();

    try {
      return files;
    } catch (e) {
      throw "파일 읽기 실패";
    }
  }
}

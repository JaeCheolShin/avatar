
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


import 'dart:io';
import 'dart:async';

import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';


class FaceFrontPhotoView extends StatefulWidget {
  const FaceFrontPhotoView({Key? key}) : super(key: key);

  @override
  State<FaceFrontPhotoView> createState() => _BodyPhotoViewState();

}

class _BodyPhotoViewState extends State<FaceFrontPhotoView> {



  @override
  Widget build(BuildContext context) {
    // 화면 세로 고정
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(

    );
  }
}



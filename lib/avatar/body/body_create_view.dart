import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyCreateView extends StatelessWidget {
  const BodyCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('전에 업로드한 사진'),
            Image.asset('assets/images/logo.png', height: 100, width: 100,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              // height: MediaQuery.of(context).size.height * 0.07,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '키',
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '몸무게',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Get.toNamed('/body/guide');
              },
              child: Text("촬영가이드"),
            ),
            ElevatedButton(
              onPressed: () async {
                Get.toNamed('/body/sensor');
              },
              child: Text("촬영시작"),
            ),


          ],
        ),
      ),

    );
  }
}

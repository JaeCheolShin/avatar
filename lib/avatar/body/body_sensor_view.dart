

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:get/get.dart';

class BodySensorView extends StatefulWidget {
  const BodySensorView({Key? key}) : super(key: key);



  @override
  State<BodySensorView> createState() => _BodyPhotoViewState();
}

class _BodyPhotoViewState extends State<BodySensorView> {
  List<double>? _accelerometerValues;
  List<double>? _gyroscopeValues;

  final _streamSubscriptions = <StreamSubscription<dynamic>>[];



  @override
  Widget build(BuildContext context) {

    final accelerometer =
    _accelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    // final gyroscope =
    // _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('80도에 맞춰야함'),
            Text('각도: ${accelerometer}'),
            ElevatedButton(
              onPressed: () async {
                Get.toNamed('/body/photo');
              },
              child: Text("촬영시작"),
            ),


          ],
        ),
      ),

    );
  }


  @override
  void dispose() {
    super.dispose();
    for (final subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }

  @override
  void initState() {
    super.initState();
    _streamSubscriptions.add(
      accelerometerEvents.listen(
            (AccelerometerEvent event) {
          setState(() {
            double x = event.x, y = event.y, z = event.z;
            double norm_Of_g = sqrt(event.x * event.x + event.y * event.y + event.z * event.z);
            x = event.x / norm_Of_g;
            y = event.y / norm_Of_g;
            z = event.z / norm_Of_g;

            double xInclination = -(asin(x) * (180 / pi));
            double yInclination = (acos(y) * (180 / pi));
            double zInclination = (atan(z) * (180 / pi));

            // String xAngle = "${xInclination.round()}°";
            // String yAngle = "${yInclination.round()}°";
            // String zAngle = "${zInclination.round()}°";
            _accelerometerValues = <double>[90-yInclination];
          });
        },
      ),
    );
  }

}


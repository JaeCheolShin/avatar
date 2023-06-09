import 'package:flutter/material.dart';

class GG extends StatefulWidget {
  const GG({Key? key}) : super(key: key);

  @override
  State<GG> createState() => _GGState();
}

class _GGState extends State<GG> {
  // the image that will be displayed in the target
  String? _targetImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('테스트 123'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// Draggable
              Draggable<String>(
                data:
                    "https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg",
                // The widget to show under the pointer when a drag is under way
                feedback: Opacity(
                  opacity: 0.4,
                  child: Container(
                    color: Colors.purple,
                    width: 300,
                    height: 200,
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.png')
                  ),
                ),
                child: Container(
                  width: 300,
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.purple,
                  child: Image.network(
                    'https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 50),

              /// Target
              DragTarget<String>(
                onAccept: (value) {
                  setState(() {
                    _targetImageUrl = value;
                  });
                },
                builder: (_, candidateData, rejectedData) {
                  return Container(
                    width: 300,
                    height: 200,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: _targetImageUrl != null
                        ? Image.network(
                            _targetImageUrl!,
                            fit: BoxFit.cover,
                          )
                        : Container(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

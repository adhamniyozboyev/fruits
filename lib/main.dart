import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controller = TextEditingController();
  String result = '';
  List<String> names = [
    'apple',
    'banana',
    'Cherry',
    'Pear',
    'Kiwi',
    'Lemon',
    'grape',
    'orange',
    'pineapple',
    'mango',
  ];
  List image = [
    'image/apple.jpg',
    'image/banana.jpg',
    'image/cherry.jpg',
    'image/pear.jpg',
    'image/kiwi.jpg',
    'image/lemon.jpg',
    'image/grape.jpg',
    'image/orange.jpg',
    'image/pineapple.jpg',
    'image/mango.jpg',
  ];
  int s = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 100,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    for (int i = 0; i < names.length; i++) {
                      if (names[i].toLowerCase() ==
                          controller.text.toLowerCase()) {
                        setState(() {
                          s = i;
                        });
                        break;
                      } else {
                        setState(() {
                          s = names.length;
                        });
                      }
                    }
                  },
                ),
              ),
            ),
          ),
          if (s != names.length)
            Container(
              child: Image.asset(image[s]),
            ),
          if (s == names.length) Center(child: Image.asset('image/telegram.jpg'))
        ],
      )),
    );
  }
}

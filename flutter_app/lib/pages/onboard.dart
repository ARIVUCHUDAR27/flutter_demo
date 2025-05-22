import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/Widget_support.dart';
import 'package:flutter_app/Widget/content_model.dart';
import 'package:flutter_app/pages/signup.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnState();
}

class _OnState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 450,
                        width: MediaQuery.of(context).size.width / 1.5,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        contents[i].title,
                        style: AppWidget.SemiBoldTextFieldStyle(),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        contents[i].description,
                        style: AppWidget.LightTextFieldStyle(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              }
              _controller.nextPage(
                duration: Duration(milliseconds: 100),
                curve: Curves.bounceIn,
              );
            },
            child: Container(
              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: Text("Next", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black38,
      ),
    );
  }
}

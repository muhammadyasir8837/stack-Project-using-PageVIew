import 'package:flutter/material.dart';
import 'package:stackimage/stackimage.dart';
import 'package:stackimage/stackround.dart';
import 'package:stackimage/stackversion.dart';

class PageviewPage extends StatefulWidget {
  const PageviewPage({super.key});

  @override
  State<PageviewPage> createState() => _PageviewPageState();
}

class _PageviewPageState extends State<PageviewPage> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 800,
            width: 500,
            color: Colors.amber,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              onPageChanged: (value) {
                print(value);
                setState(() {
                  index = value;
                });
              },
              children: [Stackimage(), Stackround(), Stackversion()],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 55),
                    InkWell(
                      onTap: () {
                        controller.jumpToPage(0);
                      },
                      child: Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: index == 0 ? Colors.black : Colors.grey,
                      ),
                    ),
                    SizedBox(width: 85),
                    InkWell(
                      onTap: () {
                        controller.jumpToPage(1);
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        color: index == 1 ? Colors.black : Colors.grey,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 85),
                    InkWell(
                      onTap: () {
                        controller.jumpToPage(2);
                      },
                      child: Icon(
                        Icons.person_outline,
                        color: index == 2 ? Colors.black : Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 500,
        child: Stack(
          children: [
            Center(
              child: Container(height: 320, width: 370, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 320),
              child: Center(
                child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190, right: 300),
              child: Center(
                child: Icon(Icons.check_box, color: Colors.white, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150, top: 190),
              child: Center(
                child: Text(
                  'Remember me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 170, top: 190),
              child: Center(
                child: Text(
                  'Forgot passward?',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Container(
                  height: 50,
                  width: 320,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                        Icon(Icons.lock, color: Colors.grey),
                        SizedBox(width: 30),
                        Icon(Icons.password_sharp, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Center(
                child: Container(
                  height: 50,
                  width: 320,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                        Icon(Icons.person, color: Colors.grey),
                        SizedBox(width: 30),
                        Text('Username', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 330),
              child: Center(
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 111, 42, 221),
                  ),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

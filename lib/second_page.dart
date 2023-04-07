import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Card',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF007ead),
          appBar: AppBar(
            title: const Text('My Card'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 90.0,
                  backgroundImage: AssetImage("images/1.png"),
                ),
                const Text(
                  "Abdulrahman Hezam",
                  style: TextStyle(
                      fontSize: 38.0,
                      color: Colors.white,
                      fontFamily: 'Merriweather'),
                ),
                const Text(
                  " App Devloper ",
                  style: TextStyle(
                      fontSize: 33.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Merriweather'),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          size: 50.0,
                          color: Colors.cyan,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "0506128258",
                          style:
                              TextStyle(fontFamily: 'Slabo27px', fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          size: 50,
                          color: Colors.cyan,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "example@email.com",
                          style:
                              TextStyle(fontFamily: 'Slabo27px', fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

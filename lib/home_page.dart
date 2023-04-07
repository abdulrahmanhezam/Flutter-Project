import 'package:card1/second_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 147, 200),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(
                  "Abdulrahman Hezam",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweather",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                title: Text(
                  "Information System Student at Jazan University ,Flutter Devloper and web Devloper.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Merriweather",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: Text(
                  'My Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.solidEnvelope),
                    onPressed: () => launch('mailto:youremail@example.com'),
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.linkedin),
                    onPressed: () => launch(
                        'https://www.linkedin.com/in/abdulrahman-hezam-7900b0271/'),
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.github),
                    onPressed: () =>
                        launch('https://github.com/abdulrahmanhezam'),
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.twitter),
                    onPressed: () => launch('https://twitter.com/HezamAb'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

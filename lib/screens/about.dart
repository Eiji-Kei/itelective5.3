// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ite5_2022/shared/leftdrawer1.dart';

import '../shared/leftdrawer.dart';
import '../shared/rightdrawer.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return WebLayout(context);
          } else {
            return MobileLayout(BuildContext);
          }
        },
      ),
    );
  }
}

Widget MobileLayout(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 147, 242),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      drawer: LeftDrawer1(),
      endDrawer: RightDrawer(),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const Image(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image(
                      image: AssetImage('assets/icons/fmab.png'),
                    ),
                  ),
                  Text(
                    "My first encounter with flutter was in this subject, and It was my first time hearing this kind of programming language, so I was a bit excited to learn this new language. At the first assessment, I immediately watched and did the setup at home and school. Then when the coding started, it was fun at first. I was super elated when I ran my first project in flutter ever, it was a simple design, but it really made me happy then. I'm still struggling with some topics, but I already got to run three assessments. The amount of stress and pressure I received in understanding this new programming language was massive. Still, every time I got to run, even the most minor parts of the project was a kind of drug that kept me going, and of course, the deadline also kept me going. Learning flutter has many ups and downs just like any other programming language. As we learn further, I read that it is one of the leading choices for some developers when developing applications and websites. Development community members have praised flutter for its intuitive interface, rich performance, and adaptability. It has quickly become one of the most popular options for developing high-quality mobile applications for the iOS and Android operating systems. Knowing this made me happy as I learned about a new programming language praised by many programmers worldwide.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 78, 184, 249),
                    ),
                  ),
                ],
              )),
        ],
      ));
}

Widget WebLayout(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 147, 242),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: RightDrawer(),
      body: Container(
        child: Row(
          children: [
            LeftDrawer1(),
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .66,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image(
                        image: AssetImage('assets/icons/fmab.png'),
                      ),
                    ),
                    Text(
                      "My first encounter with flutter was in this subject, and It was my first time hearing this kind of programming language, so I was a bit excited to learn this new language. At the first assessment, I immediately watched and did the setup at home and school. Then when the coding started, it was fun at first. I was super elated when I ran my first project in flutter ever, it was a simple design, but it really made me happy then. I'm still struggling with some topics, but I already got to run three assessments. The amount of stress and pressure I received in understanding this new programming language was massive. Still, every time I got to run, even the most minor parts of the project was a kind of drug that kept me going, and of course, the deadline also kept me going. Learning flutter has many ups and downs just like any other programming language. As we learn further, I read that it is one of the leading choices for some developers when developing applications and websites. Development community members have praised flutter for its intuitive interface, rich performance, and adaptability. It has quickly become one of the most popular options for developing high-quality mobile applications for the iOS and Android operating systems. Knowing this made me happy as I learned about a new programming language praised by many programmers worldwide.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 78, 184, 249),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ));
}

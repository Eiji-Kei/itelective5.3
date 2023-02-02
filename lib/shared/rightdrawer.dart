// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ite5_2022/screens/login.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RightDrawer extends StatefulWidget {
  const RightDrawer({super.key});

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width > 720
          ? MediaQuery.of(context).size.width * .33
          : MediaQuery.of(context).size.width * .5,
      color: Color.fromARGB(255, 113, 164, 236),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 450,
              child: Card(
                elevation: 50,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Center(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'me.png',
                            width: 60,
                            height: 60,
                          ),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: Image.asset(
                              'check.png',
                              width: 15,
                              height: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const AutoSizeText(
                      'Gallawan, Kristine Angela A.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const AutoSizeText(
                      'Slytherin',
                      style: TextStyle(
                        color: Color.fromARGB(255, 125, 222, 252),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialcount('Projects     Following     Followers'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialnum('101             246             135'),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    AutoSizeText(
                      ' Lorem ipsum dolor sit amet, consectetur adip iscing elit. Sed et est et velit ornare ultrices. Ut vitae diam volutpatrisus eget. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9,
                        color: Color.fromARGB(255, 125, 222, 252),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () => 'Null',
                                icon: Icon(Icons.facebook)),
                            IconButton(
                                onPressed: () => 'Null', icon: Icon(Icons.abc)),
                            IconButton(
                                onPressed: () => 'Null',
                                icon: Icon(Icons.backpack)),
                            IconButton(
                                onPressed: () => 'Null',
                                icon: Icon(Icons.cached_rounded)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              color: Color.fromARGB(255, 73, 139, 231),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text('Log Out'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text socialnum(String caption) {
    return Text(
      caption,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 10),
    );
  }

  Text socialcount(String caption) {
    return Text(
      caption,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Color.fromARGB(255, 125, 222, 252), fontSize: 10),
    );
  }
}

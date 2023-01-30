// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



void main() {
  runApp(const UserInfo());
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.white,
          child: SizedBox(
            width: 400,
            height: 680,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children:[
                  AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    actions: [
                      IconButton(
                        onPressed: () => 'Null',
                        icon: const Icon(Icons.more_vert),
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  Center(
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'me.png',
                          width: 127,
                          height: 127,
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: 
                            Image.asset('check.png',
                            width: 30,
                            height: 30,
                            ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 30,),
                   
                  const Text(
                    'Gallawan, Kristine Angela A.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ), 
                  ),

                  const SizedBox(height: 5,), 

                  const Text(
                    'Slytherin',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 126, 126, 126),
                    ), 
                  ), 

                  const SizedBox(height: 40,), 

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialcount('Projects'),
                      SizedBox(width: 70,), 
                      socialcount('Following'), 
                      SizedBox(width: 70,), 
                      socialcount('Followers'), 
                    ],
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialnum('11'), 
                      SizedBox(width: 94,), 
                      socialnum('11'),
                      SizedBox(width: 95,), 
                      socialnum('11'), 
                    ],
                  ),

                  const SizedBox(height: 40,),
                    
                  const Text(
                    ' Lorem ipsum dolor sit amet, consectetur adip iscing elit. Sed et est et velit ornare ultrices. Ut vitae diam volutpatrisus eget. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 126, 126, 126),
                    ),
                  ), 

                  const SizedBox(height: 30,),
                  
                  SizedBox(
                    width: 170,
                    height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => 'Null', 
                              icon: Icon(Icons.facebook)
                            ),     
                            IconButton(
                              onPressed: () => 'Null', 
                              icon: Icon(Icons.abc)
                            ),   
                            IconButton(
                              onPressed: () => 'Null', 
                              icon: Icon(Icons.backpack)
                            ),    
                            IconButton(
                              onPressed: () => 'Null', 
                              icon: Icon(Icons.cached_rounded)
                            ),                                                  
                          ],
                        ),
                      ),
                    ),

                  const SizedBox(height: 30,), 

                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 49, 182, 191)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0, ),
                          )
                          ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('View Profile',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,  
                            )
                          )
                        ],
                      ),                      
                    ),
                  
                  ) 
                ],
              ), 
            ),
          ), 
        ), 
      ), 
      ),
    );
  }

  Text socialnum(String caption) {
    return Text(
      caption,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 19,
        color: Colors.black,
      ), 
    );
  }

  Text socialcount(String caption) {
    return Text(
      caption,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 13,
        color: Color.fromARGB(255, 126, 126, 126),
      ), 
    );
  }
}
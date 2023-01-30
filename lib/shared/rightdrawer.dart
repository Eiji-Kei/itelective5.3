import 'package:flutter/material.dart';
import 'package:ite5_2022/screens/login.dart';

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
      width: MediaQuery.of(context).size.width > 720 ? MediaQuery.of(context).size.width * .5 
           : MediaQuery.of(context).size.width *.33,
      color: Color.fromARGB(255, 113, 164, 236),

          child: SizedBox(
            width: 400,
            height: 680,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children:[
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
                      color: Color.fromARGB(255, 255, 255, 255),
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
                      socialnum('246'),
                      SizedBox(width: 95,), 
                      socialnum('135'), 
                    ],
                  ),

                  const SizedBox(height: 40,),
                    
                  const Text(
                    ' Lorem ipsum dolor sit amet, consectetur adip iscing elit. Sed et est et velit ornare ultrices. Ut vitae diam volutpatrisus eget. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
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

                  const SizedBox(height: 100,), 

                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                      },
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 81, 147, 242)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0, ),
                          )
                          ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Log Out',
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
        color: Color.fromARGB(255, 255, 255, 255),
      ), 
    );
  }

}
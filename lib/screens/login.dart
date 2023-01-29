import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Stack( 
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const Image(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 30),
              child: Column(              
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'KAG ',
                        style: TextStyle(
                          fontFamily: 'SofiaSans',
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 81, 147, 242)
                        ),
                      ),
                      Text(
                        'DESIGNER',
                        style: TextStyle(
                          fontFamily: 'SofiaSans',
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 0, 0, 0)
                        ),
                      ), 
                    ],
                  ),
                  
                  SizedBox(
                    height: 3,
                    width: 50,
                    child: DecoratedBox(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 88, 151, 242))),
                  ),

                  const SizedBox(height: 125,),
                  inputText('Username', false),
                  const SizedBox(height: 30,),
                  inputText('Password', true),
                  const SizedBox(height: 20,),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 200,),
                      TextButton(
                        onPressed: () => 'Null', 
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 125, 133, 150),
                            ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 40,),

                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 81, 147, 242)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                          ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Login',
                            style: TextStyle(
                              fontFamily: 'SofiaSans',
                              fontSize: 15,
                              color: Colors.white,  
                            )
                          )
                        ],
                      ),                      
                    ),
                  
                  ) ,
                  
                  const SizedBox(height: 40,),

                  const Text(
                    'Login with',
                    style: TextStyle(
                      fontFamily: 'SofiaSans',
                      fontSize: 15,
                      color: Color.fromARGB(255, 119, 127, 144)
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialButtons('assets/icons/facebook.png'),
                      const SizedBox(width: 20,),
                      socialButtons('assets/icons/ig.png'),
                      const SizedBox(width: 20,),
                      socialButtons('assets/icons/twitter.png'),
                      const SizedBox(width: 20,),
                      socialButtons('assets/icons/google.png'),                    
                    ],
                  ),

                  const SizedBox(height: 50,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 125, 133, 150),
                        ),
                      ),

                      TextButton(
                        onPressed: () => 'Null', 
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 125, 133, 150),
                          ),
                        ),
                      )
                    ],
                  ),
                ],               
              ),
            ),
          ),
        ],
      )  
    );
  }

  Container socialButtons(String caption) {
    return Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 182, 181, 181),
                            offset: Offset(0.0,5.0),
                            blurRadius: 15,
                            spreadRadius: 2,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 241, 243, 246),
                      ),
                      child: 
                        IconButton(
                          onPressed: () => 'Null', 
                          icon: Image.asset(
                            caption,
                            height: 30,
                            width: 30,
                          )
                        ),  
                    );
  }

  Container inputText(String caption, bool tf ) {
    return Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 182, 181, 181),
                        offset: Offset(0.0,5.0),
                        blurRadius: 15,
                        spreadRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 227, 233, 242),
                  ),
                  child: TextFormField(
                    obscureText: tf,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 154, 159, 172),
                    ),
                    decoration: InputDecoration(
                      contentPadding: 
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                      border: InputBorder.none,
                      hintText: caption,
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 125, 133, 150)
                      )
                    ),
                  ),
                );
  }
}
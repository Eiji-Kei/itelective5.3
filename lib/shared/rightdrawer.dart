import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                    width: 150,
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
                          Text('Log out',
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
            ],
          )
        ],
      ),
    );
  }
}
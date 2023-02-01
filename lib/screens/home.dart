// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ite5_2022/shared/leftdrawer.dart';
import 'package:ite5_2022/shared/rightdrawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints constraints){
          if (constraints.maxWidth > 600) {
            return WebLayout(context);
          }else {
            return MobileLayout(BuildContext);
          }
        },
      ),
    );
  }
}

  Widget MobileLayout(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
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

      drawer: LeftDrawer(),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,          
                  children: const [
                    SizedBox(
                      height: 300,
                      width: 300,
                      child: Image(
                        image: AssetImage('assets/icons/fmab.png'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )  
    );
  }




Widget WebLayout(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
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

          LeftDrawer(),
          
          
          
          Container(
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width * .66,
            child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,          
                children: const [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Image(
                      image: AssetImage('assets/icons/fmab.png'),
                    ),
                  ),
                ],
              )
          ),
        ],

        ),
        
      )  
    );
  }

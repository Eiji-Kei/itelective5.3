import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ite5_2022/screens/userinfo.dart';

class RightDrawer extends StatefulWidget {
  const RightDrawer({super.key});

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
    return 
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width > 720 ? MediaQuery.of(context).size.width * .5 
               : MediaQuery.of(context).size.width *.33,
          color: Color.fromARGB(255, 113, 164, 236),
          

    );
    
  }
}
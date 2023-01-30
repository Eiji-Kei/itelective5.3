import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
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
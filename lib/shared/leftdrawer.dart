import 'package:flutter/material.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width > 720
          ? MediaQuery.of(context).size.width * .5
          : MediaQuery.of(context).size.width * .33,
      color: Color.fromARGB(255, 113, 164, 236),
      child: Container(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Container(
              color: Color.fromARGB(255, 73, 139, 231),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                leading: Icon(
                  Icons.home,
                ),
                title: Text('Home'),
                onTap: () => 'Null',
              ),
            ),
            Container(
              color: Color.fromARGB(255, 73, 139, 231),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                leading: Icon(
                  Icons.work,
                ),
                title: Text('Projects'),
                onTap: () => 'Null',
              ),
            ),
            Container(
              color: Color.fromARGB(255, 73, 139, 231),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                leading: Icon(
                  Icons.file_copy,
                ),
                title: Text('Reports'),
                onTap: () => 'Null',
              ),
            ),
            SizedBox(
              height: 650,
            ),
            Container(
              color: Color.fromARGB(255, 73, 139, 231),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                leading: Icon(
                  Icons.settings,
                ),
                title: Text('Settings'),
                onTap: () => 'Null',
              ),
            ),
            Container(
              color: Color.fromARGB(255, 73, 139, 231),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                leading: Icon(
                  Icons.info,
                ),
                title: Text('About Us'),
                onTap: () => 'Null',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

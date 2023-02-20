// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AgentsCard extends StatelessWidget {
  final String agents;
  final String agentpic;
  final String description;
  const AgentsCard({Key? key, required this.agents, required this.agentpic, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *.50,
      height: 555,
      child: Card(
        elevation: 70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        side: BorderSide(
          color: Colors.blueAccent,
        ),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(agentpic),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                )
              ),
            ),

            SizedBox(
              height: 5,
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                agents, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25)
              ),
            ),

            SizedBox(
              height: 5,
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unnecessary_null_comparison

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ite5_2022/shared/agents.dart';
import 'package:ite5_2022/shared/leftdrawer.dart';
import 'package:ite5_2022/shared/rightdrawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String ngan = "";
  String picture = "";
  double len = 0;
  String agents = "";
  List data = [];
  String agentpic = "";
  String description = "";

  @override
  void initState() {
    super.initState();

    getUserData().then((value) {
      var jsonData = jsonDecode(value.body);
      setState(() {
        ngan = jsonData['results'][0]['name']['first'] + " " +
               jsonData['results'][0]['name']['last'];
        picture = jsonData['results'][0]['picture']['medium'];
      });
    });
    getAgent();
  }

  Future<Response> getUserData() async {
    Response response = await get(Uri.parse('https://randomuser.me/api/'));
    return response;
  }

  

  void getAgent() async {
    Response response = await get(Uri.parse(
        'https://valorant-api.com/v1/agents?isPlayableCharacter=true'));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)["data"];
      });
    } else {
      throw Exception("Failed to Load");
    }
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints constraints){
          if (constraints.maxWidth > 600) {
            return WebLayout(context, ngan, picture, data);
          }else {
            return MobileLayout(context, ngan, picture, data);
          }
        },
      ),
    );
  }
}


  Widget MobileLayout(BuildContext context, String ngan, String picture, List data) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Color.fromARGB(255, 81, 147, 242),

        actions: [
            Builder(
              builder: (context) => IconButton(
                    icon: Image.network(picture),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),

              
            ),
          ],
          
      ),

      drawer: LeftDrawer(),
      endDrawer: RightDrawer(ngan: ngan, picture: picture,),
         

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

          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: data != null
              ? Container(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Card(
                      elevation: 50,
                      shadowColor: Colors.grey,
                      child: Column(
                        children:
                          List.generate(
                            data.length, ((index) {
                              return AgentsCard(
                                agents: data[index]['displayName'],
                                agentpic: data[index]['displayIconSmall'],
                                description: data[index]['description'],
                              );
                            })
                          ),
                      ),
                      
                    ),
                  ),
                )
                : Center(
                  child: CircularProgressIndicator(),
                  )
          ),
        ],
      )  
    );
  }



// -------------------------web layout ---------------------------
Widget WebLayout(BuildContext context, String ngan, String picture, List data) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Color.fromARGB(255, 81, 147, 242),

        actions: [
            Builder(
              builder: (context) => IconButton(
                    icon: Image.network(picture),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),

              
            ),
          ],
          
      ),

      endDrawer: RightDrawer(ngan: ngan, picture: picture,),

      
         

      body: Container( 
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [

          Container (child : LeftDrawer()),


          Container(
            width: MediaQuery.of(context).size.width * .5,
            height: MediaQuery.of(context).size.height,
            child: data != null
              ? Container(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Card(
                      elevation: 50,
                      shadowColor: Colors.grey,
                      child: Column(
                        children:
                          List.generate(
                            data.length, ((index) {
                              return AgentsCard(
                                agents: data[index]['displayName'],
                                agentpic: data[index]['displayIconSmall'], 
                                description: data[index]['description'],
                              );
                            })
                          ),
                      ),
                      
                    ),
                  ),
                )
                : Center(
                  child: CircularProgressIndicator(),
                  )
          ),
        ],

        ),
        
      )  
    );
  }

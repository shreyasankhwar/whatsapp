
import 'package:flutter/material.dart';
import './FirstScreen.dart';
import './SecondScreen.dart';
import './ThirdScreen.dart';
import './FourthScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
  }


 class _MyAppState extends State<MyApp> {

   Color whatsAppGreen = Color.fromRGBO(18, 140, 126, 1.0);
   TabController tabController;

   @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return new MaterialApp(
       debugShowCheckedModeBanner: false,
       home: DefaultTabController(
         length:4,
         child:Scaffold(
           appBar:AppBar(
               automaticallyImplyLeading: false,
             title:Text('WhatsApp'),
               backgroundColor: whatsAppGreen,
               bottom: new TabBar(
                 tabs: <Widget>[
                    new Tab(
                        icon: new Icon(Icons.camera_alt),
                    ),
                   new Tab(
                     child:Text('CHAT'),
                   ),
                   new Tab(
                     child:Text('STATUS'),
                   ),
                   new Tab(
                       child:Text('CALLS'),
                   ),

                 ],
                   controller: tabController
               ),
             actions: <Widget>[
               Padding(
                 padding: EdgeInsets.only(
                     right:20.0 ),
                 child:GestureDetector(
                   onTap: ()
                    {   print('sheela');   },
                      child: new Icon(Icons.search),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(
                     right:20.0 ),
                 child:GestureDetector(
                   onTap: ()
                   {  print('saar') ;   },
                   child: new Icon(Icons.more_vert),
                 ),
               ),
             ],
           ),
           body: TabBarView(
               controller: tabController,
               children:[
                 FirstScreen(),
               SecondScreen(),
                 ThirdScreen(),
                 FourthScreen(),
               ],
           ),
         ),
       ),
      

       );

   }

 }

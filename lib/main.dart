// @dart=2.9
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart';
//import 'package:assets_audio_player/audio_cache. dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: Splash2(),
	debugShowCheckedModeBanner: false,
	);
  }
}
class Splash2 extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return SplashScreen(
	seconds: 2,
	navigateAfterSeconds: new SecondScreen(),
	title: new Text('اَللّهُمَّ عَجِّل لِوَلیِّکَ الفَرَج',textScaleFactor: 2,style:TextStyle(fontSize: 14)
  
  ),
	image: Image.asset('assets/images/finalimg1.jpg',width: 1000,height: 1000),
    
	loadingText: Text("Loading"),
	photoSize: 100.0,
	loaderColor: Colors.blue,
	);
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
          appBar: AppBar(  
            title: Text('Flutter FlatButton Example'),  
          ),  
          body: Center(child: Column(children: <Widget>[  
            Container(  
              margin: EdgeInsets.only(top:110), 
              width: 200,
              height: 70, 
              child: FlatButton(  
                child: Text('دعا پڑھیں', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white, 
                
                onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListView()));
                },  
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),

                    
                  ),

              ),  
            ),  

             Container(  
              margin: EdgeInsets.only(top:55), 
              width: 200,
              height: 70, 
              child: FlatButton(  
                child: Text('آڈیو سنیں', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white, 
                
                onPressed: () {
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AudioView()));
                },  
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),

              ),  
            ),  

             Container(  
              margin: EdgeInsets.only(top:50), 
              width: 200,
              height: 70, 
              child: FlatButton(  
                child: Text('اپنی رائے دیں', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white, 
                
                onPressed: () {},  
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),

              ),  
            ),  
          ]  
         ))  
      ),  
    );  
  }  
}  
class ListView extends StatefulWidget {
  @override
  __ListViewState createState() => __ListViewState();
}

class __ListViewState extends State<ListView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.white),
     
  
      body:  GridView.count(  
                crossAxisCount: 3,  
                crossAxisSpacing: 4.0,  
                mainAxisSpacing: 7.0,  
                
                children: List.generate(choices.length, (index) {  
                  return Center(  
                    
                    child: SelectCard(choice: choices[index],
                   
                    ),  
                  );  
                }  
                )  
  //       child: new Container(
          
  //            color: Colors.black,
  //            height: 200.0,
  //            width: double.infinity,
             
  // child: new Row(
  //         children: <Widget>[
  //           Expanded(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: <Widget>[
  //                 Expanded(
  //                   child: Container(
  //                     color: Colors.white,
  //                     height: 100.0,
  //                     width: double.infinity,
  //                     child: Text(
  //                         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500'),
  //                   ),
  //                 ),
  //                 Container(
  //                   color: Colors.green,
  //                   height: 50.0,
  //                   width: double.infinity,
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: <Widget>[
  //                       Text('Your date'),
  //                       Text('Your Category')
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Expanded(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: <Widget>[
  //                 Expanded(
  //                   child: Container(
  //                     color: Colors.yellow,
  //                     height: 100.0,
  //                     width: double.infinity,
  //                     child: Text(
  //                         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500'),
  //                   ),
  //                 ),
  //                 Container(
  //                   color: Colors.green,
  //                   height: 50.0,
  //                   width: double.infinity,
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: <Widget>[
  //                       Text('Your date'),
  //                       Text('Your Category')
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
         
           
  //         ],
  //       ),
        
  //     ),

      
//      child: Container(  
//         width: 300,  
//         height: 200,  
//         padding: new EdgeInsets.all(10.0), 
//         margin: EdgeInsets.only(left:25),
//         child: Card(
//           shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(50),
//               ),
//            child: new InkWell(
//              onTap: () {
               
//                     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen()));
//                },
//            child: Container(
             
//                 width: 100.0,
//                 height: 100.0,
//                 margin: new EdgeInsets.only(left:130,top:60), 
//                 child: Text(
                  
//                           'صفحہ نمبر 1',
//                            style: TextStyle(
//                             	fontWeight: FontWeight.bold,
//                               fontSize: 27
                              
//                             ),
//                           ),
                    
                
//     ),
//   ),
// ),
//       )  


    )
    );
  }
}



class Choice {  
  const Choice({this.title, /*this.icon*/});  
  final String title;  
 // final IconData icon;  
}  

const List<Choice> choices = const <Choice>[  
  const Choice(title: 'صفحہ نمبر 1'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 2'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 3'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 4'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 5'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 6'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 7'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 8'/*, icon: Icons.wifi*/), 
    const Choice(title: 'صفحہ نمبر 9'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 10'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 11'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 12'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 13'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 14'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 15'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 16'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 17'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 18'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 19'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 20'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 21'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 22'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 23'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 24'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 25'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 26'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 27'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 28'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 29'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 30'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 31'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 32'/*, icon: Icons.wifi*/),   

    const Choice(title: 'صفحہ نمبر 33'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 34'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 35'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 36'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 37'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 38'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 39'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 40'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 41'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 42'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 43'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 44'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 45'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 46'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 47'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 48'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 49'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 50'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 51'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 52'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 53'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 54'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 55'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 56'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 57'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 58'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 59'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 60'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 61'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 62'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 63'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 64'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 65'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 66'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 67'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 68'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 69'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 70'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 71'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 72'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 73'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 74'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 75'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 76'/*, icon: Icons.phone*/),  
  const Choice(title: 'صفحہ نمبر 77'/*, icon: Icons.camera_alt*/),  
  const Choice(title: 'صفحہ نمبر 78'/*, icon: Icons.settings*/),  
  const Choice(title: 'صفحہ نمبر 79'/*, icon: Icons.photo_album*/),  
  const Choice(title: 'صفحہ نمبر 80'/*, icon: Icons.wifi*/),  
    const Choice(title: 'صفحہ نمبر 81'/*, icon: Icons.home*/),  
  const Choice(title: 'صفحہ نمبر 82'/*, icon: Icons.contacts*/),  
  const Choice(title: 'صفحہ نمبر 83'/*, icon: Icons.map*/),  
  const Choice(title: 'صفحہ نمبر 84'/*, icon: Icons.phone*/),   
];  
  
class SelectCard extends StatelessWidget {  
  const SelectCard({Key key, this.choice}) : super(key: key);  
  final Choice choice;  
  @override  
  Widget build(BuildContext context) {  
    //final TextStyle textStyle;
    return Card(  
        color: Colors.white,  
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(50),
         ),
         child: new InkWell(
              onTap: () {
               if(choice.title == 'صفحہ نمبر 1')
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>__On1stPage()));
               ////  if(choice.title == 'صفحہ نمبر 2')
         //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>__On1stPage()));
  },
        child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,
              
            children: <Widget>[  
              
              new Container(
                margin: new EdgeInsets.only(top:37),
              ), 
              
              Text(choice.title),  
            ]  
        ), 
         ), 
    );  
    
    
  }  
} 



class __On1stPage extends StatelessWidget {
@override
Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
            appBar: AppBar(  
            title: Text('1 صفحہ نمبر ',style: TextStyle(
              
            ),),
        //         actions: <Widget>[
        //  Padding(
        //     padding: EdgeInsets.only(right: 20.0),
            
        //  )
        //         ]
          ),
           
          body: 
          
          Column(children: <Widget>[  
            
            Container(  
              
              margin: EdgeInsets.only(top:20), 
              width: 400,
              height: 260, 
              child: FlatButton(  
child:new Text(             
                          ' اَلسَّلامُ عَلى آدَمَ صِفْوَةِ اللهِ مِنْ خَليقَتِهِ'  
                          ' اَلسَّلامُ عَلى شَيْثٍ وَلِيِّ اللهِ وَ خِيَرَتِهِ،'  
                          ' اَلسَّلامُ عَلى إدْريسَ الْقائِمِ للهِ بِحُجَّتِهِ'
                         '  اَلسَّلامُ عَلى نُوحٍ الْمُجابِ' 
                         ' في دَعْوَتِهِ',
            textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                         // textAlign: TextAlign.center,
                          )
                        
                          
),    
              //  textColor: Colors.black, 
           // color: Colors.blueAccent,  
               //// textColor: Colors.white, 
                
                //onPressed: () {
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListView()));
                //},  
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
              ),
              
             ),  
            
            Container(  
              margin: EdgeInsets.only(), 
              width: 500,
              height: 260, 
              child: FlatButton(  
child: new Text('سلام  آدم  پر  جو  برگزیدہ  خدا  اور  خلیفہ  خدا  ہیں۔'
           'سلام  شیث  پر  جو  ولی  خدا  اور  پسندیدہ  خدا  ہیں۔'
          'سلام  ادریس  پر  جو  اپنی  دلیل  کے  ساتھ  (  جنت  میں)  مقیم  ہیں۔'
            'سلام  نوح  پر  جن  کی  دعا  قبول  کی  گئی۔',

            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
              
              ),
),   
               // textColor: Colors.black, 
            //color: Colors.blueAccent,  
              // textColor: Colors.blue, 
                
                //onPressed: () {
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListView()));
                //},  
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
              ),
             ), 


          ]
             

            // margin: new EdgeInsets.fromLTRB(20,20,20,20),


          
          ),
          
      ),
      );
}
}


//  audio

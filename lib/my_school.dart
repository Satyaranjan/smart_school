
import 'package:flutter/material.dart';
import 'package:smart_school/login_page.dart';

void main (){
  runApp(const MySchool());
}

class MySchool extends StatelessWidget{

  const MySchool({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Admin',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MySchoolHomePage(title: 'My School Admin'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySchoolHomePage extends StatefulWidget{
  const MySchoolHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MySchoolHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MySchoolHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: const Text('My School'),
    // leading: const IconButton(
    // icon: Icon(Icons.arrow_back_ios_new,color: Colors.white),
    // iconSize: 20.0,
    // onPressed: null,
    //   ),
      ),
      body:  Center(
       child:Stack(
         children: <Widget>[
           Container(
             alignment: Alignment.topCenter,
             margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
             child: Image.network(
               'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
               height: 250,
               width: double.infinity,
               fit: BoxFit.cover,
             ),
           ),
           Container(
               alignment: Alignment.centerLeft,
               margin: const EdgeInsets.fromLTRB(20, 200, 20, 20),
               child: const Text(
                 'Welcome to Flutter',
                 style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 25.0),
               )),
           Container(
               alignment: Alignment.centerLeft,
               margin: const EdgeInsets.fromLTRB(20, 300, 20, 20),
               child: const Text(
                 'Now I am Flutter Developer',
                 style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 25.0),
               )),
           Container(
               alignment: Alignment.center,
               margin: const EdgeInsets.fromLTRB(100, 550, 20, 20),
             width: 145.0,
             height: 50.0,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)),
                  minimumSize: const Size(100, 40),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Row(

                  children: const <Widget>[

                    Text("Login", style:TextStyle(fontSize:25)),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.0,
                      right: 10.0,
                    ),

                     child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  ],
                ),
              ),
             ),
         ],
       ),
      ),
    );
  }

}
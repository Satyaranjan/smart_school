

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const SignInPage());
}

class SignInPage extends StatelessWidget{

  const SignInPage({Key? key}) :super(key: key);

  static const String _title = 'SignIn';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(title: const Text(_title), leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white),),
        ),
        body: const MySignInStatefulWidget(),
      ),
    );
  }
}
class MySignInStatefulWidget extends StatefulWidget {
  const MySignInStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MySignInStatefulWidget> createState() =>  MyStatefulWidgetState();
}
class MyStatefulWidgetState extends State<MySignInStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  late String userName = '';
  late String password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
        children: <Widget>[
        Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: const Text(
          'SignIn',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 30),
        ),
        ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellowAccent, width: 1.5),
                ),
                fillColor: Colors.white,
                labelText: 'Name',
                labelStyle:  TextStyle(color: Colors.white),
                hintText: 'Enter Name',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              controller: userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                ),
                fillColor: Colors.white,
                labelText: 'User Name',
                labelStyle:  TextStyle(color: Colors.white),
                hintText: 'Enter User Name',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: false,
              style: const TextStyle(color: Colors.white),
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellowAccent, width: 1.5),
                ),
                fillColor: Colors.white,
                labelText: 'Password',
                labelStyle:  TextStyle(color: Colors.white),
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: false,
              style: const TextStyle(color: Colors.white),
              controller: confirmPasswordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                ),
                fillColor: Colors.white,
                labelText: 'Confirm Password',
                labelStyle:  TextStyle(color: Colors.white),
                hintText: 'Enter Confirm Password',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: false,
              style: const TextStyle(color: Colors.white),
              controller: confirmPasswordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                ),
                fillColor: Colors.white,
                labelText: 'Email Id',
                labelStyle:  TextStyle(color: Colors.white),
                hintText: 'Enter Email Id',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
              height: 50,
              margin: const EdgeInsets.only(top: 100.0,bottom: 30.0),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ElevatedButton(
                child: const Text('Save', style: TextStyle(color: Colors.white,
                    fontSize: 20),),
                onPressed: () {
                  userName = nameController.text;
                  password = passwordController.text;
                  if(userName.length >password.length){
                    print(userName);
                  }else{
                    print(password);
                  }
                },
              )
          ),
        ],
    ),
    );
  }

}

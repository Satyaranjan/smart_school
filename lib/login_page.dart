
import 'package:flutter/material.dart';
import 'package:smart_school/sign_in.dart';


void main (){
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget{

  const LoginPage({Key? key}):super(key: key);
  static const String _title = 'Login';

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
        body: const MyStatefulWidget(),
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}
class MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style: TextStyle(color: Colors.white,
                      fontSize: 20),
                )),
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
                  labelText: 'User Name',
                  labelStyle:  TextStyle(color: Colors.white),
                  hintText: 'Enter Name',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.5),
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
                height: 50,
                margin: const EdgeInsets.only(top: 50.0,bottom: 30.0),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  child: const Text('Login', style: TextStyle(color: Colors.white,
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
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password', style: TextStyle(color: Colors.white,
                  fontSize: 20,decoration: TextDecoration.underline,),),
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?', style: TextStyle(fontSize: 20,color: Colors.white),),
                TextButton(
                  child: const Text(
                    'SignIn',
                    style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.underline,),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInPage()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}



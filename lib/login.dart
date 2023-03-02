import 'package:animation/home.dart';
import 'package:animation/register.dart';
import 'package:animation/share/comp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ispassword=true;
  initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {



    final size=MediaQuery.of(context).size;
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height:size.height/3,
              color:const Color.fromARGB(255, 11, 76, 216),
              child: Center(child:  Text('Login',style: TextStyle(color: Colors.white,
              fontSize: size.height/20,
                fontWeight: FontWeight.bold,

              ),)),
            ),
          ),
          SizedBox(height: size.height/10,),
          MyFormFieldText(
              validate: (  value){if(value.isEmpty) {
                return 'please enter your email address';
              }  return null;},
          labelText: 'email', prefixIcon: Icons.email, padding: 15),
          MyFormFieldText(
              validate: (  value){if(value.isEmpty) {
                return 'please enter your password address';
              }  return null;}
          ,obscureText:true,labelText: 'password', prefixIcon: Icons.lock, padding: 15,suffixIcon: Icons.remove_red_eye)


         , SizedBox(height: size.height*0.04,),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FlutterList()));
          },style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: size.height/60,horizontal: size.width/3,
            ),textStyle: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20,

          )
          ), child: Text('LOGIN')),
          SizedBox(height: size.height*0.02,),
          OutlinedButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
          },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height/60,horizontal: size.width/3.3,
                  ),textStyle: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 20,

              )
              ),


              child:const Text('Register'))
        ],
      ),
    ),
    );
  }
}

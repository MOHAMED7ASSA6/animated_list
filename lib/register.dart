
import 'package:animation/share/comp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Stack(
                children: [
                  Container(
                    height:size.height/3,
                    color:const Color.fromARGB(255, 11, 76, 216),
                    child: Center(child:  Text('Login',style: TextStyle(color: Colors.white,
                      fontSize: size.height/20,
                      fontWeight: FontWeight.bold,

                    ),)),
                  ),
                  Positioned(
                    top: size.height/30,
                    child: IconButton(onPressed: (){
                    Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height/30,),
            MyFormFieldText(labelText: 'Name', prefixIcon: Icons.person, padding: 15),
            MyFormFieldText(labelText: 'email', prefixIcon: Icons.email, padding: 15),
            MyFormFieldText(labelText: 'phone', prefixIcon: Icons.phone, padding: 15),
            MyFormFieldText(obscureText:true,labelText: 'password', prefixIcon: Icons.lock, padding: 15),
            MyFormFieldText(labelText: 'Confirm Passwor', prefixIcon: Icons.lock, padding: 15,),


             SizedBox(height: size.height*0.04,),
            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: size.height/60,horizontal: size.width/3,
                ),textStyle: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 20,

            )
            ), child: Text('Register')),
            SizedBox(height: size.height*0.02,),
            OutlinedButton(onPressed: (){

            },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: size.height/80,horizontal: size.width/3.3,
                    ),textStyle: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 20,

                )
                ),


                child:const Text('LOGIN')),
            SizedBox(height: size.height*0.02,),
          ],
        ),
      ),
    );
  }
}

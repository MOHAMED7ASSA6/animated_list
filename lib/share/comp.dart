
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyFormFieldText({
  required String labelText,
  required IconData prefixIcon,
  required double  padding,
   Function? validate,
  bool obscureText=false,
  IconData? suffixIcon,


}){
  return    Padding(padding: EdgeInsets.all(padding),
    child: TextFormField(
      validator: (valu)=>validate!(valu),
      obscureText:obscureText,
      keyboardType: TextInputType.emailAddress,
      decoration:  InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(),
        suffixIcon: Icon(suffixIcon),


      ),
    ),

  );

}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path=Path();
    path.lineTo(0, size.height/1.23);
    path.cubicTo(
        size.width/2*0.6,
        size.height*0.5,
        size.width*2/2,
        size.height*1.2,
        size.width*1.2,
        size.height/1.5,

    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;
  
}
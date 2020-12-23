import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Login/login_screen.dart';
import 'package:flutter_app/Screens/Signup/signup_screen.dart';
import 'package:flutter_app/Screens/Welcome/components/background.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //This size provide us total heught and width of our screen
    return Background(
      child: SingleChildScrollView(


      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text("WELCOME TO NEKANN APP",
          style: TextStyle(fontWeight:FontWeight.bold),
        ),
          SizedBox(height: size.height * 0.01),
          Image.asset(
            "assets/images/nekann_logo2.jpg",
            width: size.width * 0.5,
            height: size.height * 0.3,
          ),
       SizedBox(height: size.height * 0.02),
       RoundedButton(
         text: "LOGIN",
         press: () {
           Navigator.push(
               context,
               MaterialPageRoute(
                   builder: (context){
                     return LoginScreen();
                   },
               ),
           );
           },
       ),

       RoundedButton(
            text: "SIGN UP",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
      ],
    ),
      )
    );  // Background
  }
}



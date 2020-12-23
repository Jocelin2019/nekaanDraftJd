import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Login/login_screen.dart';
import 'package:flutter_app/Screens/Signup/components/background.dart';
import 'package:flutter_app/Screens/Signup/components/social_icon.dart';
import 'package:flutter_app/components/already_have_an_account_acheck.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import 'package:flutter_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
 // final Widget child;
//  const Body({
 //   Key key,
 //   @required  this.child,
//  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            SizedBox(height: size.height * 0.1),
              Text(
                "SIGNUP",
                style: TextStyle(
                  fontWeight: FontWeight.bold),
              ),

           //SizedBox(height: size.height * 0.01),
            Image.asset(
              "assets/images/nekann_logo2.jpg",
               height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.01),

            RoundedUnputField(
              hintText: "Your Email",
              onChanged: (value){} ,
            ),

            RoundedPasswordField(
              onChanged: (value){},
            ),

            RoundedButton(
              text: " SIGNUP",
              press: (){},
            ),

            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              login: false,
              press:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginScreen();
                },
                ),
                );
              },
            ),
            
            OrDivider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                SocialIcon(
                  iconScr: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconScr: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconScr: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}




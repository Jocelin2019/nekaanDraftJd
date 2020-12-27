import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Home/components/home_menu.dart';
import 'package:flutter_app/Screens/Login/components/background.dart';
import 'package:flutter_app/Screens/Signup/signup_screen.dart';
import 'package:flutter_app/components/already_have_an_account_acheck.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import 'package:flutter_app/components/rounded_password_field.dart';
import 'package:flutter_app/components/text_field_container.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {
  const Body ({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              SizedBox(height: size.height * 0.02),

              SvgPicture.asset("assets/icons/login.svg",
                height: size.height * 0.35,
              ),

              SizedBox(height: size.height * 0.02),
              RoundedUnputField(
                hintText: "Your Email",
                onChanged: (value){} ,
              ),

              RoundedPasswordField(
                onChanged: (value){},
              ),

              RoundedButton(
                text: "LOGIN",
                press: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contexte){
                            return HomeMenu();
                          },
                      ),
                  );


                },
              ),

              SizedBox(height: size.height * 0.02),
              AlreadyHaveAnAccountCheck(
                press: (){
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
        ),
    );
  }
}







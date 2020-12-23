import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    @required  this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      //here I can use size.width but I use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.20,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
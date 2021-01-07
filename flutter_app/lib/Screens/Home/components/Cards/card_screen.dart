import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/Screens/Home/components/Cards/card_add_new.dart';

import 'cards.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: DraggableScrollableSheet(
        builder: (context, scrollController) {
          return Container(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [
                            Text("Your Cards", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: Colors.black),),
                            Text("2 Physical Card, and 1 Virtual Card", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14, color: Colors.grey),),
                          ],
                        ),

               // ADD NEW CARD BUTTON

                        IconButton(
                            icon: Icon(Icons.add_circle_rounded, color: Colors.green[500], size: 50,),
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                    return CardAddNew();
                                  },
                                ),
                              );
                            }
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: <Widget> [
      // Containers for Cards Category title : physical and virtual
                        //copy same button than home_screen
                        Container(
                          child: Text("Physical Card", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey[900]),),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 10.0,spreadRadius: 4.5)]
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),

                        SizedBox( width: 16, ),

                        Container(
                          child: Text("Virtual Card", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey[900]),),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 10.0,spreadRadius: 4.5)]
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),

       // Container for Cards
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CreditCard(color: "2a1214", number: 9290, image: "master.png", valid: "VALID 10/22",),
                        CreditCard(color: "000068", number: 1298, image: "visa.png", valid: "VALID 07/24",),
                      ],
                    ),
                  ),

       // old Container for Cards
              /*  //OLD CARD
              // old Container for Cards
                 Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(35, 60, 103, 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                           CircleAvatar(
                             radius: 16,
                             backgroundColor: Color.fromRGBO(50, 172, 121, 1),
                             child: Icon(Icons.check, color: Colors.white, size: 24,),
                           ),
                            Text("VISA", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, color: Colors.white,fontWeight: FontWeight.w900),)
                          ],
                        ),

                        SizedBox(height: 32,),

                        Text("***** ***** **** 5647", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w700, letterSpacing: 2.0),),

                        SizedBox(height: 32,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Text("CARD HOLDER", style: TextStyle(fontSize: 12, color: Colors.blue[100],fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                                Text("Jemima Fresnel", style: TextStyle(fontSize: 16, color: Colors.grey[100],fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Text("EXPIRES", style: TextStyle(fontSize: 12, color: Colors.blue[100],fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                                Text("8/24", style: TextStyle(fontSize: 16, color: Colors.grey[100],fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Text("CVV", style: TextStyle(fontSize: 12, color: Colors.blue[100],fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                                Text("845", style: TextStyle(fontSize: 16, color: Colors.grey[100],fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                              ],
                            )

                          ],
                        )

                      ],
                    )

                  ),
                */

               // Container for Cards - END


                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    child:  Text("Card Settings", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 10.0,
                        blurRadius: 4.5
                      )]
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Row(
                          children:<Widget> [
                            Icon(
                              Icons.wifi_tethering,
                              color: Colors.lightBlue[900],
                            ),

                            SizedBox(width: 16,),

                            Text("Card Settings", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),)

                          ],
                        ),

                        Switch(
                          value: true,
                          activeColor: Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_){},
                        )

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [BoxShadow(
                            color: Colors.grey[100],
                            spreadRadius: 10.0,
                            blurRadius: 4.5
                        )]
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Row(
                          children:<Widget> [
                            Icon(
                              Icons.credit_card,
                              color: Colors.lightBlue[900],
                            ),

                            SizedBox(width: 16,),

                            Text("Online Payment", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),)

                          ],
                        ),

                        Switch(
                          value: true,
                          activeColor: Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_){},
                        )

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [BoxShadow(
                            color: Colors.grey[100],
                            spreadRadius: 10.0,
                            blurRadius: 4.5
                        )]
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Row(
                          children:<Widget> [
                            Icon(
                              Icons.mobile_screen_share,
                              color: Colors.lightBlue[900],
                            ),

                            SizedBox(width: 16,),

                            Text("ATM Withdraws", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),)

                          ],
                        ),

                        Switch(
                          value: true,
                          activeColor: Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_){},
                        )

                      ],
                    ),
                  )

                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(243, 245, 248, 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
            ),
          );
        },

        //ScrollSheet size
        initialChildSize: 0.95,
        maxChildSize: 0.95,

      ),
    );
  }
}

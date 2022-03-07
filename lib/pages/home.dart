import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wolly_vpn/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBartwo,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: colorOne,
        child: Stack(alignment: Alignment.topCenter,
          children: [
            Positioned(child: SvgPicture.asset("assets/map.svg",width: MediaQuery.of(context).size.width)),

              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),margin: EdgeInsets.all(16),


                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
                      Column(children: [
                      SvgPicture.asset("assets/umbrella.svg",color: Colors.white,),
                        Text("Protect your \n privacy",textAlign:TextAlign.center ,style: TextStyle(fontSize:9,color: Colors.white),)
                      ],),
                      Column(children: [
                        SvgPicture.asset("assets/earth.svg",color: Colors.white,),
                        Text("Accesss any \n Content",textAlign:TextAlign.center,style: TextStyle(fontSize:9,color: Colors.white),)
                      ],),
                      Column(children: [
                        SvgPicture.asset("assets/speed.svg",color: Colors.white,),
                        Text("Accelerate \n Network",textAlign:TextAlign.center,style: TextStyle(fontSize:9,color: Colors.white),)
                      ],)
                    ],),),

                  Column(
                    children: [
                      Container(


                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(

                           border: Border.all(width: 1, color: colorTwo),
                        //     boxShadow:  [BoxShadow(
                        //     color: Colors.black.withOpacity(0.4),
                        //     spreadRadius: 5,
                        //     blurRadius: 5,
                        //
                        // )],
                          shape: BoxShape.circle,gradient: RadialGradient(colors: [colorTwo,colorOne],
                          stops:[0.3,1],

                          )),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Icon(Icons.power_settings_new_rounded,size: 80,color: Colors.white,),
                        ),
                      ),
                      Text("Click to Connect",style:TextStyle(color: colorTwo))
                    ],
                  ),

                  Container(width: MediaQuery.of(context).size.width*0.7,
                    decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(50),border:
    Border.all(color: colorTwo ) ),
                    child: ListTile(
                      leading: CircleAvatar(radius:15,backgroundImage:AssetImage("assets/malaysia.png")),
                      title: Text("Indonasia",style:TextStyle(color: colorTwo)),
                      trailing: Icon(Icons.arrow_forward_ios_sharp,color: colorTwo,size: 20,),
                    ),
                  )


                ],


              ),


          ],
        ),
      ),

    );
  }
}

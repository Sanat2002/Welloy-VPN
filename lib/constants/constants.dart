import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

Color bgOne = const Color(0xff1D5DFA);
Color bgTwo = const Color(0xff021241);
Color btColor = const Color(0xff0066cc);
Color borderColor = const Color(0xff0F5BCC);
Color colorOne =const Color(0xff021241);
Color colorTwo = const Color(0xff002e99);

var textstyleone = TextStyle(fontSize: 15,color: bgOne,fontWeight: FontWeight.w500);

TextStyle styleOne=const TextStyle(
    fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white);

TextStyle styleTwo= const TextStyle(fontWeight: FontWeight.normal,
    fontSize: 15,color: Colors.white70);


//App Bar without premium icon
var appBarOne = AppBar(
  centerTitle: true,
elevation: 0,
backgroundColor: colorOne,
leading:Icon(Icons.menu,color: colorTwo,),
 title:Row(mainAxisSize: MainAxisSize.min,
   children: [
   "Welloy".text.textStyle(TextStyle(fontFamily: "Roboto",color: borderColor,fontSize: 20,fontWeight: FontWeight.w300)).make(),
   "VPN".text.textStyle(TextStyle(fontFamily: "Roboto",color: bgOne,fontWeight: FontWeight.bold,fontSize: 20)).make()
 ],)
 ,
);

//App Bar with premium icon
var appBartwo = AppBar(
  centerTitle: true,
elevation: 0,
backgroundColor: colorOne,
leading:Icon(Icons.menu,color: colorTwo,),
 title:Row(mainAxisSize: MainAxisSize.min,
   children: [
   "Welloy".text.textStyle(TextStyle(fontFamily: "Roboto",color: borderColor,fontSize: 20,fontWeight: FontWeight.w300)).make(),
   "VPN".text.textStyle(TextStyle(fontFamily: "Roboto",color: bgOne,fontWeight: FontWeight.bold,fontSize: 20)).make()
 ],)
 ,
 actions: [Padding(
   padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
   child: SvgPicture.asset("assets/premium.svg",color: Colors.amber,width: 27+4.5,height: 33+5.5,),
 )],

);
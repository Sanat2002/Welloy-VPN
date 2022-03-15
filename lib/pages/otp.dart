// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wolly_vpn/constants/constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: size.width,
        color: colorOne,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                HeightBox(size.height*.4),
                Padding(padding: EdgeInsets.only(left: 23),child: Text("Enter OTP",style: textstyleone,)),
                 Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: TextFormField(
                          style: TextStyle(
                            color: Colors.white
                          ),
                          decoration: InputDecoration(
                              focusColor: Colors.white,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: colorTwo,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: colorTwo,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
              ),
              ]),
            HeightBox(size.height*.4),
            Center(
              child: SizedBox(
                width: size.width*.9,
                height: size.height*.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorTwo, 
                    elevation: 1
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text("Next",style: TextStyle(fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
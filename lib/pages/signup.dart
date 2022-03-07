import 'package:flutter/material.dart';
import 'package:wolly_vpn/constants/constants.dart';

import 'login.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarOne,

      body: SafeArea(
        child: Container(padding: EdgeInsets.all(35),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: colorOne,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Container(child:Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: colorTwo),),
                Text("Let's Get Started",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white)),

              ],
            ),)

              ,Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Text("User Name",style: textstyleone,),
                    ),
                    TextFormField(

                      decoration: InputDecoration(focusColor: Colors.white,contentPadding: EdgeInsets.symmetric(horizontal:5,vertical: 0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: colorTwo,width:2,),
                              borderRadius: BorderRadius.circular(10))

                          ,enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: colorTwo,width:3,),
                              borderRadius: BorderRadius.circular(5))),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Text("Password",style: textstyleone,),
                    ),


                    TextFormField(

                      decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal:5,vertical: 0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: colorTwo,width:2,),
                              borderRadius: BorderRadius.circular(10)),


                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: colorTwo,width:3,),
                              borderRadius: BorderRadius.circular(5))),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Text("Mobile Number",style: textstyleone,),
                    ),
                    TextFormField(

                      decoration: InputDecoration(focusColor: Colors.white,contentPadding: EdgeInsets.symmetric(horizontal:5,vertical: 0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: colorTwo,width:2,),
                              borderRadius: BorderRadius.circular(10))

                          ,enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: colorTwo,width:3,),
                              borderRadius: BorderRadius.circular(5))),),

                  ],
                ),
              ),

              Column(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: colorTwo, elevation: 1),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Sign Up", style: TextStyle(fontSize: 20)),
                        )),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?",style: TextStyle(color: Colors.white,fontSize: 12,letterSpacing: 0.5)),
                      TextButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      }, child: Text("Log In",style: TextStyle(color: colorTwo,fontSize: 12,letterSpacing: 0.5,)))
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}

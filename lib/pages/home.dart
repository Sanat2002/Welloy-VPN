// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constants/constants.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
      ),
      body: Stack(
        children: [
          Positioned(
            top: size.height*.03,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black),left: BorderSide(color: Colors.black),right:BorderSide(color: Colors.black),top: BorderSide(color: Colors.black)),
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Server : ".text.xl2.make(),
                  // Image.asset("assets/Indonesia.png",),
                  " Indonesia".text.xl2.make()
                ],
              ),
            ).px(40),
          ),
          Positioned(
            top: size.height*.13,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "02:23:00".text.xl4.make()
              ],
            )
          ),
          Positioned(
            top: size.height*.35,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height*.2,
                      width: size.width*.4,
                      decoration: BoxDecoration(
                        color: bgTwo,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/Indonesia.png",height: 50,),
                          "Indonesia".text.white.xl2.make(),
                          "Jakarta".text.white.xl.make()
                        ],
                      ).px(10),
                    ),
                    10.widthBox,
                    Container(
                      height: size.height*.2,
                      width: size.width*.4,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Image.asset("assets/Indonesia.png",height: 50,),
                          CircleAvatar(
                            backgroundColor: btColor,
                            child: Icon(Icons.signal_cellular_alt,)),
                          "20 ms".text.bold.xl2.make(),
                          "Ping".text.xl.make()
                        ],
                      ).px(10),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height*.2,
                      width: size.width*.4,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Image.asset("assets/Indonesia.png",height: 50,),
                          CircleAvatar(
                            backgroundColor: btColor,
                            child: Icon(Icons.cloud_download,color: Colors.white,size: 30,)),
                          "23,78 Mbps".text.bold.xl2.make(),
                          "Download".text.xl.make()
                        ],
                      ).px(10),
                    ),
                    10.widthBox,
                    Container(
                      height: size.height*.2,
                      width: size.width*.4,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Image.asset("assets/Indonesia.png",height: 50,),
                          CircleAvatar(
                            backgroundColor: btColor,
                            child: Icon(Icons.cloud_upload,color: Colors.white,size: 30,)),
                          "17,90 Mbps".text.xl2.make(),
                          "Upload".text.xl.make()
                        ],
                      ).px(10),
                    ),
                  ],
                ),
                20.heightBox,
                SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal:30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    side: BorderSide(color: borderColor),
                    primary: bgTwo,
                    elevation: 0,
                    textStyle: const TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text('Disconnect',style: TextStyle(fontSize: 20),),
                    ),
        
                  ),
                ),
              )
              ],
            )
          )

        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(4)),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(4)),
                  currentAccountPicture: CircleAvatar(),
                  accountName: "John".text.xl2.black.make(),
                  accountEmail: "john2929@gamil.com".text.xl.black.make()
                  )
                ).p(8).h(230),
                ListTile(
                 leading: Icon(Icons.person,color: Colors.black,size: 30,), 
                 title: "Profile".text.xl.make(),
                 tileColor: Colors.grey.shade300,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                 trailing: Icon(Icons.chevron_right_sharp,size: 30,color: Colors.black,),
                 onTap: (){
                   
                 },
                ).px(8)
            ],
          )
        ),
      ),
    );
  }
}
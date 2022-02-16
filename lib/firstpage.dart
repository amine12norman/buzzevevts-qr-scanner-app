import 'dart:ui';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class FirstPage extends StatefulWidget{
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateFirstP();
  }

}


class StateFirstP extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              height:300,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image:
                  AssetImage("assets/background-buz2.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child:  Center(
                  child: Container(
                    child: const Center(child: Image(image: AssetImage("assets/logo.png"),width: 60, alignment: Alignment.center,)),
                  ),
                ) ,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Row (
              children:<Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex:6,
                  child: Container(
                    height:MediaQuery.of(context).size.height*0.03+30,
                    child: RaisedButton (
                      color: const Color(0xff692062),
                      shape:const RoundedRectangleBorder(
                          side: BorderSide(width: 2,color: Color(0xff692062), ) ,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ) ,
                      onPressed: ()  {},
                      child: const Text ( ('Se Connecter') ,style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.w300),
                      ) ,
                    ),
                  ),
                ) ,
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ],
            ),
            Container(
              child: Container(
                height: 20,
              ),
            ),
            Row (
              children:<Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex:6,
                  child: Container(
                    height:MediaQuery.of(context).size.height*0.03+30,
                    child: RaisedButton (
                      color: Colors.white,
                      shape:const RoundedRectangleBorder(
                          side: BorderSide(width: 2,color: Color(0xff692062), ) ,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ) ,
                      onPressed: ()  {},
                      child: const Text ( ('S\'inscrire') ,style: TextStyle(fontSize:20,color: Color(0xff692062),fontWeight: FontWeight.w300),
                      ) ,
                    ),
                  ),
                ) ,
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ],
            ),

            Expanded (
              flex:2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(flex:3,child: Container(height: 1,color: Colors.grey,)),
                  const Expanded(child: Text(('Ou'),
                    textAlign:TextAlign.center,
                  )),
                  Expanded(flex:3,child: Container(height: 1,color: Colors.grey,)),
                ],),
            ) ,
            Container(
              width:300,
              height: 60,
              child: RaisedButton (
                color: const Color(0xff0e76a8),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ) ,
                onPressed: (){},
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget>[

                    Image.asset('assets/linkedin_logo.png', width: 25,),
                    Container(width:0.5),
                    Container(
                        child: const Padding(
                          padding: EdgeInsets.only(top:3),
                          child: Text('Continue avec Linkedin', style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.normal)),
                        )

                    ),
                  ],
                ),
              ),

            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded (
              flex:1,
              child:Container(

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text ( ('Pour plus d\'informations,') ,
                        style: TextStyle( color: Colors.grey,
                            fontSize: 12
                        )
                    ),
                    GestureDetector (
                      child: const Text ( (' contactez nous' ), style: TextStyle(color:Color(0xff692062),fontSize: 12),
                      ) ,
                    ),
                  ],

                ),
              ),
            ) ,
          ],
        )
    );
  }

}
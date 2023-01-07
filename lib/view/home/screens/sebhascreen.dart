import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sebha_app2/constants/mainconstants.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}
int count=0;
class _SebhaScreenState extends State<SebhaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
      backgroundColor: backgroundColor,
        title: Text("السبحة الإلكترونية",
          style:TextStyle(
            fontSize: textFont26,
            fontWeight: FontWeight.w600,
            color: white,
          ),
          ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [

    ElevatedButton(onPressed:() {
      setState(() {
        count=count+1;
      });
    },style: ElevatedButton.styleFrom(
      shape:CircleBorder(),
      shadowColor: ShadowColor,
      elevation: 30,
      backgroundColor: greenButton,
      padding: EdgeInsets.all(75),

    ),
      child:Column(
      children: [
        Text('$count',style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w600,
        ),),
        Text('سبح',style: TextStyle(
          color: backgroundColor,
        ),),
      ],
    ),),
  ElevatedButton(onPressed:() {
    setState(() {
      count=0;
    });
  },style: ElevatedButton.styleFrom(
    shape:CircleBorder(),
    shadowColor: blackButton,
    elevation: 10,
    backgroundColor: blackButton,
    padding: EdgeInsets.all(10),


  ), child: Icon(Icons.replay,color: greenButton,),






  )],

),
      ),


    );
  }
}

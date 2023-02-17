import 'package:flutter/material.dart';
import 'package:sebha_app2/constants/mainconstants.dart';
import 'package:sebha_app2/view/home/screens/msaa.dart';

import 'sbah.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: Text('الأذكار',style:TextStyle(
          fontWeight: FontWeight.w600,fontSize: textFont26),),
        backgroundColor: backgroundColor,elevation: 0,centerTitle: true,)
      ,body:ListView(
      children: [GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
        return Sbah() ;

    }));},child:
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Stack(
            children: [
              Image.asset("$Sabah",width: MediaQuery.of(context).size.width,),
              const Positioned(bottom: 20,right: 20,
               child:Padding(
                 padding: EdgeInsets.all(5.0),
                 child: Text('أذكار الصباح',style: TextStyle(
                    fontSize: textFont18,fontWeight: FontWeight.w600,color: white),),
               ),
              ) ],
          ),
            ),
        ),
         GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => msaa()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Image.asset("$Masa", width: MediaQuery.of(context).size.width),
                  const Positioned(
                    bottom: 20,
                    right: 20,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'أذكار المساء',
                        style: TextStyle(
                            fontSize: textFont18,
                            fontWeight: FontWeight.w600,
                            color: white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),


        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(child: Text('أذكار متنوعة   ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: textFont18,color:white),),alignment: Alignment.centerRight,),
      ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Stack(
            children: [
              Image.asset("$qyam",width: MediaQuery.of(context).size.width,),
              const Positioned(bottom: 20,right: 20,
                child:Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('أذكار قيام الليل',style: TextStyle(
                      fontSize: textFont18,fontWeight: FontWeight.w600,color: white),),
                ),
              ) ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Stack(
            children: [
              Image.asset("$sala",width: MediaQuery.of(context).size.width,),
              const Positioned(bottom: 20,right: 20,
                child:Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('أذكار الصلاة',style: TextStyle(
                      fontSize: textFont18,fontWeight: FontWeight.w600,color: white),),
                ),
              ) ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Stack(
            children: [
              Image.asset("$nome",width: MediaQuery.of(context).size.width,),
              const Positioned(bottom: 20,right: 20,
                child:Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('أذكار النوم',style: TextStyle(
                      fontSize: textFont18,fontWeight: FontWeight.w600,color: white),),
                ),
              ) ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Stack(
            children: [
              Image.asset("$mtnoa",width: MediaQuery.of(context).size.width,),
              const Positioned(bottom: 20,right: 20,
                child:Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('أدعية متنوعة',style: TextStyle(
                      fontSize: textFont18,fontWeight: FontWeight.w600,color: white),),
                ),
              ) ],
          ),

        ),],

    )
    ,
    );
  }
}

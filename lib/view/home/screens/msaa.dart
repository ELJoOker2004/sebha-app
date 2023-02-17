import 'package:flutter/material.dart';
import 'package:sebha_app2/constants/mainconstants.dart';
import 'package:sebha_app2/constants/zekrcard.dart';
import 'package:sebha_app2/main/azkarcontroller.dart';

class msaa extends StatefulWidget {
  const msaa({Key? key}) : super(key: key);

  @override
  State<msaa> createState() => _msaaState();
}

class _msaaState extends State<msaa> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'أذكار المساء',
          style: TextStyle(fontSize: textFont18),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FutureBuilder(
            future:  msaaController.getAzkarController(),
            builder: (BuildContext context,AsyncSnapshot<dynamic>snapshot){
              if (snapshot.data==null){
                return Container();
              }
              return ListView.builder(

                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context,int index){
                    return CardZekr(count:snapshot.data[index].repeat, text:  "${snapshot.data[index].zekr}");
                  });
            },)
      ),
    );
  }
}

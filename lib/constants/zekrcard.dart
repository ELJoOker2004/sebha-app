import 'package:flutter/material.dart';
import 'package:sebha_app2/view/home/screens/sebhascreen.dart';

import 'mainconstants.dart';
class CardZekr extends StatefulWidget {
  int count;
  String text;
  bool visible=true;

  @override
  State<CardZekr> createState() => _CardZekrState();
CardZekr({
    required this.count,
  required this.text,
});

}

class _CardZekrState extends State<CardZekr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:InkWell(
        onTap: () {
          setState(() {
            if (widget.count > 0) widget.count--;

          });
          if (widget.count == 0) widget.visible = false;
        },
        child: Visibility(visible: widget.visible,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            elevation: 15,
            color: blackButton,
            shadowColor: Colors.black.withOpacity(.2),
            
            child: Padding(
              padding:
              const EdgeInsets.only(top: 16, bottom: 16, right: 16),
              child: Column(
                children: [
                  Container(

                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 5),
                      child: Text(
                        ('${widget.text}'),
                        style:
                        TextStyle(color: white, fontSize: textFont16),
                        textAlign: TextAlign.right,

                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: green,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0,right: 10),
                          child: Text('${widget.count}',textAlign: TextAlign.center,
                              style: TextStyle(
                                color: white,
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )

    );
  }
}

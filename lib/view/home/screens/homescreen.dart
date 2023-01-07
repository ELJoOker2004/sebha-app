import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sebha_app2/constants/mainconstants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
body:
      Padding(
        padding: const EdgeInsets.all(12.0),
        child:ListView(children:
        [Text('الأحد 25,سبيتمبر',
          style:
        TextStyle(color: white,
            fontWeight: FontWeight.w600,
            fontSize: 18),
          textAlign: TextAlign.right,),
          Text('13 صفر,1444',style:
          TextStyle(color: greenTextColor,
              fontSize: textFont14,
              fontWeight: FontWeight.w500),
            textAlign: TextAlign.right,),
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 16, 3 ,16),
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              elevation: 25,
              color: green,
              shadowColor: Colors.black.withOpacity(.1),
              child:Column(
                children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('المحلة الكبرى,الغربية',
                      style: TextStyle(
                          fontSize: textFont14,
                          fontWeight: FontWeight.w500,
                          color: white),textAlign: TextAlign.center,),
                    Icon(Icons.location_on_outlined,color: white,),
                  ],
                ),
                  Container(
                    child: Text("متبقي على      ",
                      style: TextStyle(
                          fontSize: textFont14,
                          fontWeight: FontWeight.w500,
                          color: white),),alignment: Alignment.topRight,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text("    دقيقة",
                              style: TextStyle(
                                  fontSize: textFont14,
                                  fontWeight: FontWeight.w500,
                                  color: white),),alignment: Alignment.topRight,
                          ),
                          Container(
                            child: Text("15:20",
                              style: TextStyle(
                                  fontSize: textFont34,
                                  fontWeight: FontWeight.w500,
                                  color: white),),alignment: Alignment.topRight,
                          ),
                        ],
                      ),

                      Container(
                        child: Text("صلاه الظهر  ",
                          style: TextStyle(
                              fontSize: textFont34,
                              fontWeight: FontWeight.w600,
                              color: white),),alignment: Alignment.centerRight,
                      ),
                    ],
                  ),


              ],)

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 0, 3 ,16),
            child: Card(shape:
            RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(10))),
              elevation: 5,
              color: Color(0xff212121),
              shadowColor: Colors.black.withOpacity(.1),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(alignment: Alignment.centerRight,width: 160,height: 48,
                        decoration: BoxDecoration(color: green,borderRadius:BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))),

                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('مواعيد الصلاة',style:
                          TextStyle(fontWeight: FontWeight.w600,
                            fontSize: textFont16,
                            color: black,),),
                          Padding(
                            padding: const EdgeInsets.only(right: 10,left: 10),
                            child: SvgPicture.asset(Mosqueico),
                          ),
                        ],
                      ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 24, right: 24,bottom: 12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('٥:٢١ ص',style: TextStyle(color: white)),
                        Text('الفجر',style: TextStyle(color: white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 24, right: 24,bottom: 12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('٦:٥٤ ص',style: TextStyle(color: white)),
                        Text('الشروق',style: TextStyle(color: white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 24, right: 24,bottom: 12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('١٢:٠١ م',style: TextStyle(color: white)),
                        Text('الظهر',style: TextStyle(color: white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 24, right: 24,bottom: 12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('٢:٤٩ م',style: TextStyle(color: white)),
                        Text('العصر',style: TextStyle(color: white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 24, right: 24,bottom: 12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('٥:٠٨ م',style: TextStyle(color: white)),
                        Text('المغرب',style: TextStyle(color: white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 24, right: 24,bottom: 12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('٦:٣١ م',style: TextStyle(color: white)),
                        Text('العشاء',style: TextStyle(color: white)),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
          Card(shape:
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(10))),
            elevation: 5,
            color: greencardColor,
            shadowColor: Colors.black.withOpacity(.1),
            child: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16,right: 16),
              child: Column(
               children: [
                 Container(
                     child: Text('دعاء اليوم',style: TextStyle(color: green),),alignment: Alignment.centerRight,),

                     Container(alignment: Alignment.centerRight,
                         child: Text('(اللَّهُمَّ إنِّي أعُوذُ بكَ مِنَ الهَمِّ والحَزَنِ، والعَجْزِ والكَسَلِ، والبُخْلِ، والجُبْنِ، وضَلَعِ الدَّيْنِ، وغَلَبَةِ الرِّجالِ)',
                           style: TextStyle(
                               color: white,
                               fontSize: textFont16),
                           textAlign: TextAlign.right,),),

               ],
              ),
            ),


          )
        ],) ),
    );
  }
}

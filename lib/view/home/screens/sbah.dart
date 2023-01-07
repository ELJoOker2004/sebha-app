import 'package:flutter/material.dart';
import 'package:sebha_app2/constants/mainconstants.dart';
import 'package:sebha_app2/constants/zekrcard.dart';

class Sbah extends StatefulWidget {
  const Sbah({Key? key}) : super(key: key);

  @override
  State<Sbah> createState() => _SbahState();
}

class _SbahState extends State<Sbah> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'أذكار الصباح',
          style: TextStyle(fontSize: textFont18),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            CardZekr(count: 5,
              text: '“((اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا ، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ)). [وإذا أمسى قال: اللَّهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت، وإليك المصير.]”',),
            CardZekr(count: 5,
              text: '“(اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلاَّ أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لاَ يَغْفِرُ الذُّنوبَ إِلاَّ أَنْتَ)”',),
            CardZekr(count: 5,
              text: '“((اللَّهُمَّ إِنِّي أَصْبَحْتُ أُشْهِدُكَ، وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلاَئِكَتِكَ، وَجَمِيعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْدُكَ وَرَسُولُكَ)) [ وإذا أمسى قال: اللَّهم إني أمسيت...]”',),
            CardZekr(count: 5,
              text: '“((سُبْحَانَ اللَّهِ وَبِحَمْدِهِ))”',),
          ],
        ),
      ),
    );
  }
}

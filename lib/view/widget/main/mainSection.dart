import 'package:flutter/material.dart';

import 'HomeBanner.dart';
import 'IconInfo.dart';
import 'Projects.dart';
import 'Recommendations.dart';
class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  _MainSectionState createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(

      children:  [
        HomeBanner(),
        IconInfo(),
        Projects(),
        Recommendations(),


      ],
    ));
  }
}

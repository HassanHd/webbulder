import 'package:flutter/material.dart';
import 'package:webco/Responsive.dart';
import 'package:webco/constants.dart';
import 'package:webco/view/widget/main/mainSection.dart';
import 'package:webco/view/widget/menu/SidMenuSection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)?null:
      AppBar(
        backgroundColor: hBgColor,
        leading: Builder(builder: (BuildContext context) {

          return IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();

          }, icon: Icon(Icons.menu));

        },

        ),
      ),
      drawer:SidMenuSection(),
      body: SafeArea(
        child: Center(
            child: Container(
                constraints: BoxConstraints(maxWidth: 1440.0),
                child: Row(
                  children: [
                    if(Responsive.isDesktop(context))
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: hPrimaryColor,
                          child: SidMenuSection(),
                        )),
                    Expanded(
                        flex: 7,
                        child: Container(
                          child: MainSection(),
                        )),
                  ],
                ))),
      ),
    );
  }
}

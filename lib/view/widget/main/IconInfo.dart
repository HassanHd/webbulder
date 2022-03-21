import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webco/constants.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(hDefaultPadding * 3,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconInfo(
              context: context,
              icon: Icons.supervisor_account,
            numtext: "77+",
            texttitle: "Clients"),
          buildIconInfo(
              icon: Icons.location_on,
              numtext: '139+',
              context: context,
              texttitle: 'Projects'),
          buildIconInfo(
              icon: Icons.public,
              numtext: '30+',
              context: context,
              texttitle: 'Countries'),
          buildIconInfo(
              icon: Icons.star,
              numtext: '13k+',
              context: context,
              texttitle: 'Stars'),
        ],
      ),


    );
  }
}

Widget buildIconInfo({
  required BuildContext context,
  required String numtext, required String texttitle, required IconData icon}) {
  return Column(
    children: [Icon(icon, color: Colors.white, size: 50,),

      SizedBox(height: 10,),
      Text("$numtext",
        style: Theme
            .of(context)
            .textTheme
            .headline6!
            .copyWith(color: hPrimaryColor, fontSize: 30),
      ),
      Text("$texttitle", style: Theme
          .of(context)
          .textTheme
          .subtitle2),
    ],
  );
}
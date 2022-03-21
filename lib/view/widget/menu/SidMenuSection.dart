import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'Goals.dart';
import 'Info.dart';
import 'Logo.dart';

class SidMenuSection extends StatefulWidget {
  const SidMenuSection({Key? key}) : super(key: key);

  @override
  _SidMenuSectionState createState() => _SidMenuSectionState();
}

class _SidMenuSectionState extends State<SidMenuSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Logo(),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              Info(),
              Divider(),
              Goals(),
              Divider(),
              SizedBox(
                height: hDefaultPadding / 2,
              ),
              TextButton(
                onPressed: () {
                  print("hi");
                },
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(hDefaultPadding / 2),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/download.svg"),
                        const SizedBox(
                          width: hDefaultPadding / 2,
                        ),
                        Text(
                          "Download Brochure",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: hDefaultPadding / 2,
              ),
              Container(
                color: hSecondaryColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/twitter.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/github.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/dribble.svg")),
                    Spacer(),
                  ],
                ),
              )
            ],
          )))
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webco/constants.dart';

import '../../../Responsive.dart';
class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [

          Image.asset("assets/images/background.jpg",
          fit: BoxFit.cover,
          ),
         Container(color: hDarkColor.withOpacity(0.2),),
          Padding(
            padding: const EdgeInsets.all(hDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Build a greate future\nfor all of us!",
                style:Responsive.isDesktop(context)? Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white,fontWeight: FontWeight.bold):
                Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold)
                  ,
                ),
                ElevatedButton(onPressed: (){},
                    style: TextButton.styleFrom(
                      backgroundColor: hPrimaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 40,
                      vertical: 20)
                    ),
                    child: const Text("CONTACT US",

                    style: TextStyle(color: hDarkColor),
                    ))
              ],
            ),
          )

        ],
      ),
    );
  }
}

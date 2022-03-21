import 'package:flutter/material.dart';
import 'package:webco/model/Recommendation.dart';

import '../../../Responsive.dart';
import '../../../constants.dart';
class RecommendationCard extends StatelessWidget {

  Recommendation recommendation;

  RecommendationCard({required this.recommendation});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: Responsive.isDesktop(context) ? 400 :Responsive.isTablet(context) ? 300:Responsive.isMobileLarge(context) ?200:100 ,
      padding: EdgeInsets.all(20),
      color: hSecondaryColor,
      child:Column(
        children: [
          ListTile(
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            leading: CircleAvatar(
              backgroundColor: hPrimaryColor,
              radius: 30,
              backgroundImage: AssetImage("${recommendation.image}"),

            ),

          ),
          SizedBox(height: hDefaultPadding / 2),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ) ,
    );
  }
}


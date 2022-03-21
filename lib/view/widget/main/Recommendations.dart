import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webco/constants.dart';
import 'package:webco/model/Recommendation.dart';

import 'RecommendationCard.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  _RecommendationsState createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Client Recommendations:",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demoRecommendation.length,
                  (index) => Padding(padding: const EdgeInsets.only(right: 20),
                  child:RecommendationCard(recommendation: demoRecommendation[index],)
                  )),
            ),
          )
        ],
      ),
    );
  }
}

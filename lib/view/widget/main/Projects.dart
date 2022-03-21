import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webco/constants.dart';
import 'package:webco/model/Project.dart';

import '../../../Responsive.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

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
              "Our Projects",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          buildGridView(
              context: context,
              itemCount: demoProjects.length,
              itemBuilder: (context, index) {
                return Container(
                  color: hSecondaryColor,
                  padding: EdgeInsets.all(hDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "${demoProjects[index].image}",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: hDefaultPadding,
                      ),
                      Text(
                        "${demoProjects[index].title}",
                        maxLines: 2,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? hDefaultPadding : 2,
                      ),
                      Text(
                        "${demoProjects[index].description}",
                        maxLines: Responsive.isDesktop(context) ? 2 : 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            height: Responsive.isDesktop(context) ? 1.7 : 0),
                      ),
                      SizedBox(
                        height:
                            Responsive.isDesktop(context) ? hDefaultPadding : 0,
                      ),
                      Text(
                        "More Info ..",
                        style: TextStyle(color: hPrimaryColor),
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

GridView buildGridView({required int itemCount, var itemBuilder, var context}) {
  return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isDesktop(context) ? 3 : 2,
          mainAxisSpacing: hDefaultPadding,
          crossAxisSpacing: hDefaultPadding,
          childAspectRatio: 0.75),
      itemBuilder: itemBuilder);
}

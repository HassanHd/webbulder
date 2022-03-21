import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(titel: 'Address', subtitel: 'zag _AboAldahab st 5'),
        buildContactInfo(titel: 'Country', subtitel: 'Egy'),
        buildContactInfo(titel: 'Email', subtitel: 'hassan.m.daboos@gmail.com'),
        buildContactInfo(titel: 'Mobile', subtitel: '01018440919'),
        buildContactInfo(titel: 'WebSite', subtitel: 'https//Daboos.com'),

      ],


    );
  }
}

Padding buildContactInfo({required String titel, required String subtitel}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$titel", style: TextStyle(color: Colors.white),),
        Text("$subtitel"),

      ],
    ),
  );
}

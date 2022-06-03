import 'package:app_trip/shared/screenTitle.dart';
import 'package:flutter/material.dart';

import '../shared/tripList.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft),
        ),
        child: Column(children: const [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 160,
            child: ScreenTitle(text: 'Trip Application'),
          ),
          Flexible(
            child: TripList(),
          )
        ]),
      ),
    );
  }
}

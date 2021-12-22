import 'package:capparis_petal/widgets/sport_icon.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: const [
                SportIcon(name: "Sport 1"),
                SportIcon(name: "Sport 2"),
                SportIcon(name: "Sport 3"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

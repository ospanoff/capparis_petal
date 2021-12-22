import 'package:capparis_petal/modules/cappers_list.dart';
import 'package:capparis_petal/modules/sports_list.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SportsList(),
            CappersList(),
          ],
        ),
      ),
    );
  }
}

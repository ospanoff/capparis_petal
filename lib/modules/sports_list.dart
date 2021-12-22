import 'package:capparis_petal/models/sport.dart';
import 'package:capparis_petal/widgets/sport_icon.dart';
import 'package:flutter/material.dart';

class SportsList extends StatefulWidget {
  const SportsList({Key? key}) : super(key: key);

  @override
  _SportsListState createState() => _SportsListState();
}

class _SportsListState extends State<SportsList> {
  List<Sport> sports = [
    const Sport("Sport 1", "", "#03fcc2"),
    const Sport("Sport 2", "", "#fc03db"),
    const Sport("Sport 3", "", "#fcb103"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: sports
            .map(
              (sport) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SportIcon(sport: sport),
              ),
            )
            .toList(),
      ),
    );
  }
}

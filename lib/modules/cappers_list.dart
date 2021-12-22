import 'package:capparis_petal/models/capper.dart';
import 'package:capparis_petal/widgets/capper_overview.dart';
import 'package:flutter/material.dart';

class CappersList extends StatefulWidget {
  const CappersList({Key? key}) : super(key: key);

  @override
  _CappersListState createState() => _CappersListState();
}

class _CappersListState extends State<CappersList> {
  List<Capper> cappers = [
    Capper("Capper 1", 0.5, ""),
    Capper("Capper 2", 0.1, ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cappers", style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 10),
          ...cappers.map((capper) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: CapperOverview(capper: capper),
          )).toList(),
        ],
      ),
    );
  }
}

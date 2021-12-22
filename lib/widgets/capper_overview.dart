import 'package:capparis_petal/models/capper.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CapperOverview extends StatelessWidget {
  const CapperOverview({Key? key, required this.capper}) : super(key: key);

  final Capper capper;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.teal,
          ),
          // TODO: Use capper.imageUrl
          child: const Icon(Icons.ac_unit),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(capper.name, style: Theme.of(context).textTheme.headline6),
              CircularPercentIndicator(
                percent: capper.winrate,
                radius: 70,
                center: Text(
                  "${capper.winrate * 100}%",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.purple,
                lineWidth: 7.0,
                animation: true,
              )
            ],
          ),
        )
      ],
    );
  }
}

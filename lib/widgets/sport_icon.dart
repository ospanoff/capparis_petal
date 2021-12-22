import 'package:capparis_petal/models/sport.dart';
import 'package:flutter/material.dart';

class SportIcon extends StatelessWidget {
  const SportIcon({Key? key, required this.sport}) : super(key: key);

  final Sport sport;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Color(int.parse(sport.colorHex.replaceFirst("#", "0xff"))),
          ),
          // TODO: Use sport.iconUrl
          child: const Icon(Icons.sports),
        ),
        Center(child: Text(sport.name)),
      ],
    );
  }
}

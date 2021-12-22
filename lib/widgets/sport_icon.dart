import 'package:flutter/material.dart';

class SportIcon extends StatelessWidget {
  const SportIcon({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 50,
          height: 50,
          child: Icon(Icons.waves),
        ),
        Center(child: Text(name)),
      ],
    );
  }
}

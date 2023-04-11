import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyComponentTeam extends StatelessWidget {
  
  final String teamName;
  final String score;
  void Function()? process_1;
  void Function()? process_2;
  void Function()? process_3;

  MyComponentTeam({
    super.key,
    required this.teamName,
    required this.score,
    required this.process_1,
    required this.process_2,
    required this.process_3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
            color: Colors.amber.shade800,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            score,
            style: TextStyle(
              fontSize: 85,
              color: Colors.amber.shade800,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        myElevatedbutton(process: process_1, text: 'Add 1 Point'),
        const SizedBox(height: 10,),
        myElevatedbutton(process: process_2, text: 'Add 2 Point'),
        const SizedBox(height: 10,),
        myElevatedbutton(process: process_3, text: 'Add 3 Point'),
      ],
    );
  }
}

Widget myElevatedbutton({
  required void Function()? process,
  required String text,
  Color color = Colors.blueGrey,
}) {
  return ElevatedButton(
    onPressed: process,
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      backgroundColor: color,
    ),
    child: Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cards extends StatelessWidget {
  const Cards(
      {Key? key,
      required this.userId,
      required this.id,
      required this.title,
      required this.completed})
      : super(key: key);

  final int? userId, id;
  final String? title;
  final bool? completed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.10),
              offset: const Offset(0, 10),
              blurRadius: 30,
              spreadRadius: -10,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("User Id : $userId"),
          const SizedBox(
            height: 8,
          ),
          Text("Id : $id"),
          const SizedBox(
            height: 8,
          ),
          Text("Title : $title"),
          const SizedBox(
            height: 8,
          ),
          Text("Completed : $completed"),
        ],
      ),
    );
  }
}
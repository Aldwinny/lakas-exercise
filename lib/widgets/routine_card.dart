import 'package:flutter/material.dart';

class RoutineCard extends StatefulWidget {
  const RoutineCard({super.key});

  // Here be your instance variables

  @override
  State<RoutineCard> createState() => RoutineCardState();
}

class RoutineCardState extends State<RoutineCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('WOWOWOOWOWOOWOWOOW');
      },
      child: Container(
        // decoration: const BoxDecoration(
        //     border: Border.symmetric(
        //         horizontal: BorderSide(color: Colors.black54))),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
        child: ListTile(
          leading: const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Murica???',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
              ),
              Text(
                'Make Hamburger COuntryyy?? WOWOWOOWOWOWWOWOOW',
                style: TextStyle(overflow: TextOverflow.ellipsis),
              )
            ],
          ),
          trailing: IconButton(
              onPressed: () {
                print("Test");
              },
              icon: const Icon(Icons.more_vert)),
        ),
      ),
    );
  }
}

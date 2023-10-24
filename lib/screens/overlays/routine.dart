import 'package:flutter/material.dart';
import 'package:lakas/widgets/routine_card.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({super.key});

  static const routeName = '/routine';

  @override
  State<RoutineScreen> createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          color: Colors.red[400],
          height: 60,
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Routines',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                  onPressed: () {
                    // TODO: This is a function that adds a routine
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ))
            ],
          ),
        ),
        RoutineCard(),
        RoutineCard(),
        RoutineCard(),
        RoutineCard(),
        RoutineCard(),
        RoutineCard(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lakas/shared/colors.dart';

class ThisDayScreen extends StatefulWidget {
  const ThisDayScreen({super.key});

  static const routeName = '/thisday';

  @override
  State<ThisDayScreen> createState() => _ThisDayScreenState();
}

class _ThisDayScreenState extends State<ThisDayScreen> {
  final defaultTextStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins");

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(8),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    "Good Morning!",
                    style: defaultTextStyle.copyWith(
                        fontSize: 30, color: Colors.blue[800]),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "User",
                    style: defaultTextStyle.copyWith(
                        fontSize: 20, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SvgPicture.asset('assets/images/exercises/placeholder.svg',
                  height: MediaQuery.sizeOf(context).height * 0.3),
            ),
            Text(
              "Today is Sunday,",
              style: defaultTextStyle.copyWith(
                  fontSize: 20, color: Colors.grey[800]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(Colors.blue[800]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Let's Workout!",
                    style: defaultTextStyle.copyWith(
                        fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Last Workout: April 2 1897, 11:31 PM",
              ),
            ),
          ]),
    );
  }
}

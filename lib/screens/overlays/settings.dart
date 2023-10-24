import 'package:flutter/material.dart';
import 'package:lakas/widgets/settings_list_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontFamily: 'Poppins', color: Colors.black26, fontSize: 20),
              ),
            ),
          ),
          ClipOval(
            child: CircleAvatar(
              radius: 60,
              child: Image.network(
                "https://i.pinimg.com/564x/81/90/00/81900091238f17ad8df3509e112073ff.jpg",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Elaina (Best Girl)',
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(height: 1),
          const SettingsListTile(
            title: Text("Drink Water"),
          ),
          const Divider(height: 1),
          const SettingsListTile(
            title: Text("Touch Grass"),
          ),
          const Divider(height: 1),
          const SettingsListTile(
            title: Text("Take Care of Yourself"),
          ),
          const Divider(height: 1),
          const Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: Text(
              'Lakas Exercise Planner Application v1.0.0',
              style: TextStyle(color: Colors.black38),
            ),
          )
        ],
      ),
    );
  }
}

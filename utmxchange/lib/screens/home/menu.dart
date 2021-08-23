import 'package:flutter/material.dart';
import 'package:utm_x_change/models/MenuIconButton.dart';
import 'package:utm_x_change/screens/home/socialMediaSection.dart';
import 'package:utm_x_change/constants.dart';

class DashboardMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.width / 2.3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuIcon(
                    icon: Icons.thumbs_up_down,
                    text: "Do's & Dont's",
                    navigate: () => Navigator.pushNamed(context, dosdonts)),
                MenuIcon(
                    icon: Icons.place,
                    text: "Places",
                    navigate: () => Navigator.pushNamed(context, place)),
                MenuIcon(
                    icon: Icons.info,
                    text: "Info",
                    navigate: () => Navigator.pushNamed(context, info_menu)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuIcon(
                    icon: Icons.local_mall,
                    text: "Shopping",
                    navigate: () => Navigator.pushNamed(context, shopping)),
                MenuIcon(
                    icon: Icons.assignment,
                    text: "Checklist",
                    navigate: () => Navigator.pushNamed(context, checkList)),
                MenuIcon(
                    icon: Icons.hotel,
                    text: "Accomodotion",
                    navigate: () =>
                        Navigator.pushNamed(context, accommodation)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuIcon(
                    icon: Icons.description,
                    text: "Notice",
                    navigate: () => Navigator.pushNamed(context, notices)),
                MenuIcon(
                    icon: Icons.attach_money,
                    text: "Living Cost",
                    navigate: () => Navigator.pushNamed(context, livingCost)),
                MenuIcon(
                    icon: Icons.people,
                    text: "Friends",
                    navigate: () => Navigator.pushNamed(context, friend)),
              ],
            ),
          ),
          SizedBox(height: 10),
          SocialMedia(),
        ]),
      ),
    );
  }
}

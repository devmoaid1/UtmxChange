import 'package:flutter/material.dart';


class DosInMalaysia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
        title: Text(
          "Do's",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff732759),
                  child: ListTile(
                    title: Text(
                        '1. Do shake hand with men for greeting. but no woment unless they offer to do so first. The tradional greeting or salam resembles a handshake with both hands but without grasp. People meet visitors by placing their hand over left chest to mean"I greet you from my heart."\n\n2. Do remove your shoes before entering a Malaysian home or mosques and temples. It is customary to remove and leave footware outside the house. This practice is also applicable while visiting religious buildings.\n\n3. Do use right hand to reveive or give something. It is considered as discourteous in Malay custom to use your left hand when hand over or receive thing.\n\n4. Do carry essential documents, health insaurance, iCad, Matric card always.\n\n5. Do show respect to Malaysian Culture and Law'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

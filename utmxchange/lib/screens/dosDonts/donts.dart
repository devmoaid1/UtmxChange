import 'package:flutter/material.dart';



class DontsInMalaysia extends StatelessWidget {
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
          "Dont's",
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
                        "1. Do not touch the head of an adult. Touching people on the head is considered rude.\n\n2. Do not point forefinger at things. Instead, the thumb of the right hand with four fingers folded under is the preffered way.\n\n3. Do not pound your fist into hte palm of the other hand, which is considered an obscene gesture to some people.\n\n4. Do not point your feets to people.\n\n5. Do not drink alcohol. The country's large muslim population does not drink alcohol. \n\n6. Do not involve in illegal drugs. There is mandatory death penalty for trafficking.\n\n7. Do not be offended if your offer of handshaking is not reciprocated by a Muslim who is of opposite sex. In Islam, physical contact between the opposite sex is discouraged"),
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

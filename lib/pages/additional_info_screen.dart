import 'package:flutter/material.dart';

class AdditionalInfoScreen extends StatelessWidget {
  bool switchState = true;
  AdditionalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: const Text("Additional Information"),
        ),
        body: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.share_outlined),
              title: Text("Share Dukaan App"),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            const ListTile(
              leading: Icon(Icons.chat), //Todo: NEED ICON CHANGE
              title: Text("Change Language"),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            ListTile(
              leading: const Icon(Icons.whatsapp_outlined),
              title: const Text("Whatsapp Chat Support"),
              trailing: Switch(onChanged: (switchState) {}, value: switchState),
            ),
            const ListTile(
              leading: Icon(Icons.lock_outline), //todo: Icon change
              title: Text("Privacy Policy"),
            ),
            const ListTile(
              leading: Icon(Icons.star_outline),
              title: Text("Rate Us"),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign Out"),
            ),
            const Spacer(),
            const ListTile(
              title: Text(
                "Version",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black38),
              ),
              subtitle: Text(
                "2.4.2",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}

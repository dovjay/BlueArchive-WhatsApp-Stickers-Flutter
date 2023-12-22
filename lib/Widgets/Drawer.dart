import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyDrawer extends StatelessWidget {
  static const TextStyle _menuTextColor = TextStyle(
    color: Colors.teal,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );

  static const IconThemeData _iconColor = IconThemeData(
    color: Colors.teal,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "BlueArchive Stickers",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            accountEmail: Text("In-Game Club BlueArchive Stickers"),
//          currentAccountPicture: Image.asset('assets/images/avatar.png'),
          ),
          ListTile(
            leading: IconTheme(
              data: _iconColor,
              child: Icon(Icons.share),
            ),
            title: Text("Share", style: _menuTextColor),
            onTap: () {
              Share.share(
                  "Download Best WhatsApp Stickers \n\n 👇👇👇👇👇 \nDownload Now\nhttps://");
            },
          ),
          ListTile(
            leading: IconTheme(
              data: _iconColor,
              child: Icon(Icons.rate_review),
            ),
            title: Text("Rating & Review", style: _menuTextColor),
            onTap: () async {
              Navigator.of(context).pop();
              const url = 'https://';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not open App';
              }
            },
          ),
          ListTile(
            leading: IconTheme(
              data: _iconColor,
              child: Icon(Icons.security),
            ),
            title: Text("Privacy Policy", style: _menuTextColor),
            onTap: () async {
              Navigator.of(context).pop();
              const url =
                  'http://kethod.com/apps/trending-stickers/privacy-policy.html';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not open App';
              }
            },
          ),
        ],
      ),
    );
  }
}

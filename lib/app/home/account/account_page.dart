import 'package:long_stay_hotel/constants/keys.dart';
import 'package:long_stay_hotel/constants/strings.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.accountPage),
        actions: <Widget>[
          FlatButton(
            key: const Key(Keys.logout),
            child: const Text(
              Strings.logout,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

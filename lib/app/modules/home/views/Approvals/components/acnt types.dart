import 'package:flutter/material.dart';

enum AccountType { Male, Female, Others}

class AccountTypes extends StatefulWidget {
  const AccountTypes({Key? key}) : super(key: key);

  @override
  State<AccountTypes> createState() => Acnt();
}

/// This is the private State class that goes with MyStatefulWidget.
class Acnt extends State<AccountTypes> {
  AccountType? _character = AccountType.Male;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Add as root user'),
            leading: Radio<AccountType>(
              value: AccountType.Male,
              groupValue: _character,

              onChanged: (AccountType? value) {
                setState(() {
                  _character = value;
                });
              }, activeColor: Colors.blue,
            ),
          ),
          ListTile(
            title: const Text('Add as root Admin'),
            leading: Radio<AccountType>(
              value: AccountType.Female,
              groupValue: _character,
              onChanged: (AccountType? value) {
                setState(() {
                  _character = value;
                });
              },activeColor: Colors.blue,
            ),
          ),
          ListTile(
            title: const Text('Add as Moderator'),
            leading: Radio<AccountType>(
              value: AccountType.Others,
              groupValue: _character,
              onChanged: (AccountType? value) {
                setState(() {
                  _character = value;
                });
              },activeColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
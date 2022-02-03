import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../home/views/Acccess/components/acnt types.dart';
import '../controllers/access_rights_controller.dart';

class AccessRightsView extends GetView<AccessRightsController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding),
            Text(
              "Access Rights",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Add New User",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            // SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            // SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const Material(child: AccountTypes()),
            ),
          ],
        ),
      ),
    );
  }
}

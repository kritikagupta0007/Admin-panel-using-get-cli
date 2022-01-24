import 'package:sample_get_cli/constants.dart';
import 'package:sample_get_cli/responsive.dart';
import 'package:sample_get_cli/app/modules/home/views/notification/components/header.dart';
import 'package:sample_get_cli/app/modules/home/views/notification/components/notification_details.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    SizedBox(height: defaultPadding),
                    NotificationDetails(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

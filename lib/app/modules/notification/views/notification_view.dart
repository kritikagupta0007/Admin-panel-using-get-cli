import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sample_get_cli/app/modules/notification/views/components/header.dart';
import 'package:sample_get_cli/app/modules/notification/views/components/notification_details.dart';

import '../../../../constants.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
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

import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import 'notification_info_card.dart';

class NotificationDetails extends StatelessWidget {
  const NotificationDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Updated Notifications",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          NotificationInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Message for permission",
            timeOfMessage: "1:00 p.m.",
            numOfFiles: "The user want permission for....",
          ),
          NotificationInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Notification for Promotions",
            timeOfMessage: "6:00 p.m.",
            numOfFiles: "The user want promotion for....",
          ),
          NotificationInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Payment Notification",
            timeOfMessage: "8:30 a.m.",
            numOfFiles: "The user want permission for....",
          ),
          NotificationInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Pending Delivery",
            timeOfMessage: "5:45 a.m.",
            numOfFiles: "The user want permission for....",
          ),
          NotificationInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Oder Placed",
            timeOfMessage: "8:30 a.m.",
            numOfFiles: "The user want permission for....",
          ),
          NotificationInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "New Updates",
            timeOfMessage: "1:00 p.m.",
            numOfFiles: "The user want permission for....",
          ),
          NotificationInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Pending Delivery",
            timeOfMessage: "5:45 a.m.",
            numOfFiles: "The user want permission for....",
          ),
          NotificationInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Notification for Promotions",
            timeOfMessage: "6:00 p.m.",
            numOfFiles: "The user want promotion for....",
          ),
        ],
      ),
    );
  }
}

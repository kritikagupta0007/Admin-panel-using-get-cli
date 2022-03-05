import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sample_get_cli/app/modules/recommendations/views/components/analytics.dart';
import 'package:sample_get_cli/app/modules/recommendations/views/components/head.dart';
import 'package:sample_get_cli/app/modules/recommendations/views/components/reviews.dart';

import '../../../../constants.dart';
import '../controllers/recommendations_controller.dart';

class RecommendationsView extends GetView<RecommendationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Head(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      AnalyticsPage(),
                      SizedBox(height: defaultPadding),
                      ReviewsPage(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

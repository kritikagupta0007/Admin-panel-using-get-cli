import 'package:sample_get_cli/constants.dart';
import 'package:sample_get_cli/app/modules/home/views/recommendations/components/analytics.dart';
import 'package:sample_get_cli/app/modules/home/views/recommendations/components/head.dart';
import 'package:sample_get_cli/app/modules/home/views/recommendations/components/reviews.dart';
import 'package:flutter/material.dart';

class RecommendationScreen extends StatelessWidget {
  const RecommendationScreen({Key? key}) : super(key: key);

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

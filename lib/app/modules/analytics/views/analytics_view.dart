import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sample_get_cli/app/modules/analytics/views/components/behavioural_pattern.dart';
import 'package:sample_get_cli/app/modules/analytics/views/components/preference.dart';

import '../../../../constants.dart';
import '../../../../responsive.dart';

import '../controllers/analytics_controller.dart';

class AnalyticsView extends GetView<AnalyticsController> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding),
            Text(
              "Analytics",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: defaultPadding),
            Text(
              "Behavioural Pattern of Users",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: defaultPadding),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Responsive(
                    mobile: BehaviouralCardGridView(
                      crossAxisCount: _size.width < 650 ? 2 : 4,
                      childAspectRatio: _size.width < 650 ? 1.3 : 1,
                    ),
                    tablet: BehaviouralCardGridView(),
                    desktop: BehaviouralCardGridView(
                      childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Expanded(flex: 3, child: Preferences()),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}

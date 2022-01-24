import 'package:sample_get_cli/app/modules/home/views/analytics/components/behavioural_pattern.dart';
import 'package:sample_get_cli/app/modules/home/views/analytics/components/preference.dart';
import 'package:flutter/material.dart';
import 'package:sample_get_cli/constants.dart';

import '../../../../../responsive.dart';
import '../dashboard/components/recent_files.dart';

class AnalyticsMainScreen extends StatelessWidget {
  const AnalyticsMainScreen({Key? key}) : super(key: key);

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
                SizedBox(height: defaultPadding),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Expanded(flex: 3, child: Preferences()),
                ),
              ],
            ),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}

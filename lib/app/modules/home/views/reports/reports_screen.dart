import 'package:sample_get_cli/constants.dart';
import 'package:sample_get_cli/app/modules/home/views/reports/components/header.dart';
import 'package:sample_get_cli/app/modules/home/views/reports/components/report.dart';
import 'package:flutter/material.dart';

class ReportMainScreen extends StatelessWidget {
  const ReportMainScreen({Key? key}) : super(key: key);

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
                      ReportFiles(),
                      SizedBox(height: defaultPadding),
                      ReportFiles(),
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

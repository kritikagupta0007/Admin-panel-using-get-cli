import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sample_get_cli/app/modules/reports/views/components/header.dart';
import 'package:sample_get_cli/app/modules/reports/views/components/report.dart';

import '../../../../constants.dart';
import '../controllers/reports_controller.dart';

class ReportsView extends GetView<ReportsController> {
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

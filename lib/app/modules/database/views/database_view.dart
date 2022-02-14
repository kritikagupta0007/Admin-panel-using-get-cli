import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sample_get_cli/app/modules/home/views/database/components/header.dart';

import '../../../../constants.dart';
import '../../home/views/database/components/line_chart.dart';
import '../../home/views/database/components/my_files.dart';
import '../controllers/database_controller.dart';

class DatabaseView extends GetView<DatabaseController> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
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
                      GridView.count(
                        crossAxisCount: currentWidth < 800 ? 1 : 2,
                        childAspectRatio: 2,
                        padding: const EdgeInsets.all(02.0),
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                        semanticChildCount: 2,
                        shrinkWrap: true,
                        children: [
                          Container(
                            child: Material(
                              elevation: 02.0,
                              borderRadius: BorderRadius.circular(03.0),
                              child: Container(
                                padding: EdgeInsets.all(25.0),
                                child: LineChartSample2(),
                              ),
                            ),
                          ),
                          Container(
                            child: Material(
                              elevation: 02.0,
                              borderRadius: BorderRadius.circular(03.0),
                              child: Container(
                                padding: EdgeInsets.all(25.0),
                                child: Center(
                                  child: LineChartSample2(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: defaultPadding),
                      MyFiles1(),
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

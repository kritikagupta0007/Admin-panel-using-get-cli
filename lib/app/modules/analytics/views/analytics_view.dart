import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/analytics_controller.dart';

class AnalyticsView extends GetView<AnalyticsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnalyticsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AnalyticsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

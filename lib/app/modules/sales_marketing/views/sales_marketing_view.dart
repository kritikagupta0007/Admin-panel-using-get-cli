import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sales_marketing_controller.dart';

class SalesMarketingView extends GetView<SalesMarketingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SalesMarketingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SalesMarketingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

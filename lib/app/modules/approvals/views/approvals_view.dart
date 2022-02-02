import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/approvals_controller.dart';

class ApprovalsView extends GetView<ApprovalsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ApprovalsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ApprovalsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/access_rights_controller.dart';

class AccessRightsView extends GetView<AccessRightsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AccessRightsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AccessRightsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

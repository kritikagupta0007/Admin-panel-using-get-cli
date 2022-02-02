import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/database_controller.dart';

class DatabaseView extends GetView<DatabaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatabaseView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DatabaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

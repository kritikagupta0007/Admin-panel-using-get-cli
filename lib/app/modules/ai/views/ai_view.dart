import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ai_controller.dart';

class AiView extends GetView<AiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

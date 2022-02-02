import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recommendations_controller.dart';

class RecommendationsView extends GetView<RecommendationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecommendationsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RecommendationsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

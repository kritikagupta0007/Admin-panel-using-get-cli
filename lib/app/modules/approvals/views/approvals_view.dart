import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../../responsive.dart';
import '../../home/views/approvals/approvals_main.dart';
import '../../home/views/approvals/components/header.dart';
import '../../home/views/approvals/components/search.dart';
import '../controllers/approvals_controller.dart';

class ApprovalsView extends GetView<ApprovalsController> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const ApprovalsHeader(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(flex: 5, child: Search()),
                        ],
                      ),
                      const SizedBox(height: defaultPadding),
                      Responsive(
                        mobile: ImageVideoGridview(
                          crossAxisCount: _size.width < 650 ? 2 : 4,
                          childAspectRatio:
                          _size.width < 650 && _size.width > 350 ? 1.3 : 1,
                        ),
                        tablet: ImageVideoGridview(),
                        desktop: ImageVideoGridview(
                          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                        ),
                      ),
                      const SizedBox(height: defaultPadding * 2),
                      Row(
                        children: const [
                          Expanded(flex: 5, child: Search()),
                        ],
                      ),
                      const SizedBox(height: defaultPadding),
                      Responsive(
                        mobile: TextGridview(
                          crossAxisCount: _size.width < 650 ? 2 : 4,
                          childAspectRatio:
                          _size.width < 650 && _size.width > 350 ? 1.3 : 1,
                        ),
                        tablet: TextGridview(),
                        desktop: TextGridview(
                          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                        ),
                      ),
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

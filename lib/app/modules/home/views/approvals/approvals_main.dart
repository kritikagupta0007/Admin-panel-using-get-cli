import 'package:flutter/material.dart';
import 'package:sample_get_cli/app/modules/home/views/approvals/components/card_data.dart';
import 'package:sample_get_cli/app/modules/home/views/approvals/components/header.dart';
import 'package:sample_get_cli/app/modules/home/views/approvals/components/search.dart';

import '../../../../../constants.dart';
import '../../../../../responsive.dart';

class ApprovalsMainScreen extends StatelessWidget {
  const ApprovalsMainScreen({Key? key}) : super(key: key);

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

class ImageVideoGridview extends StatelessWidget {
  const ImageVideoGridview(
      {Key? key, this.crossAxisCount = 3, this.childAspectRatio = 1})
      : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return CardDataInfo();
      },
    );
  }
}

class TextGridview extends StatelessWidget {
  const TextGridview(
      {Key? key, this.crossAxisCount = 3, this.childAspectRatio = 1})
      : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return CardDataInfo1();
      },
    );
  }
}

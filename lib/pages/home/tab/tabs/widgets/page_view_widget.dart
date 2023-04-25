import 'package:flutter/material.dart';

import '../../../../../components/constans/images.dart';
import '../../../../../components/constans/mediaqueries.dart';

class PageViewWidget extends StatelessWidget {
  String image;

   PageViewWidget({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: m_w(context) * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}

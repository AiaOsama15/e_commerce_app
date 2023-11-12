import 'package:e_commerce_app/shared/constant.dart';
import 'package:e_commerce_app/widgets/build_image_category.dart';
import 'package:e_commerce_app/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_row_text.dart';
import 'package:e_commerce_app/widgets/custom_slider.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
            child: Column(children: [
              //slider
              customSlider(),
              hSizedBox,
              buildRowText(
                  firstText: 'More Category',
                  secondClickableText: 'More Category'),

              hSizedBox,
              buildCirculaCatogory(),
              hSizedBox,
              buildRowText(
                  firstText: 'FlashSale', secondClickableText: 'See more'),

              hSizedBox,
            ]),
          ),
        ),
      ),
    );
  }
}

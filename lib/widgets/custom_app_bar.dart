import 'package:e_commerce_app/shared/constant.dart';
import 'package:e_commerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    title: CustomTextField(
      hint: 'Search',
      prefixIcon: Icons.search,
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.heart_broken)),
      wSizedBox,
      IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add)),
    ],
  );
}

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/core/utils/extensions.dart';
import 'package:flutter_application_1/app/modules/home/controller.dart';
import 'package:flutter_application_1/app/widgets/icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddCard extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = getIcons();
    var squareWidth = Get.width - 12.0.wp;

    return Container(
      width: squareWidth / 2,
      height: squareWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () {},
        child: DottedBorder(
          color: Colors.grey[400]!,
          dashPattern: [8, 4],
          child: Center(
            child: Icon(Icons.add, size: 10.0.wp, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

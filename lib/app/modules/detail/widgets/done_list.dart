import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/extensions.dart';
import 'package:flutter_application_1/app/modules/home/controller.dart';
import 'package:get/get.dart';

class DoneList extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  DoneList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => homeCtrl.doneTodos.isNotEmpty
          ? ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Text('Completed(${homeCtrl.doneTodos.length})',
                style: TextStyle(
                  fontSize: 14.0.sp,
                  color: Colors.grey
                ),)
              ],
            )
          : Container(),
    );
  }
}

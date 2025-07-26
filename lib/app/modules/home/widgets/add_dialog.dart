import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/extensions.dart';
import 'package:flutter_application_1/app/modules/home/controller.dart';
import 'package:get/get.dart';

class AddDialog extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();

  AddDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.all(3.0.wp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
                IconButton(
                 
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.close),
                ),
                TextButton(
                   style: ButtonStyle(
                    // 点击时无水波纹
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: Text('Done', style: TextStyle(fontSize: 14.0.sp)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

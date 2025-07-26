import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/extensions.dart';
import 'package:flutter_application_1/app/modules/home/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class AddDialog extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();

  AddDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(3.0.wp),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
            child: Text(
              'New Task',
              style: TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
            child: TextFormField(
              controller: homeCtrl.editCtrl,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]!),
                ),
              ),
              autofocus: true,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter your todo item';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
              top: 5.0.wp,
              left: 5.0.wp,
              right: 5.0.wp,
              bottom: 2.0.wp,
            ),
            child: Text(
              'Add to',
              style: TextStyle(fontSize: 14.0.sp, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

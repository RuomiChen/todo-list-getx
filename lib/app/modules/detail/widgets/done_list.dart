import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/extensions.dart';
import 'package:flutter_application_1/app/core/values/colors.dart';
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
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 2.0.wp,
                    horizontal: 5.0.wp,
                  ),
                  child: Text(
                    'Completed(${homeCtrl.doneTodos.length})',
                    style: TextStyle(fontSize: 14.0.sp, color: Colors.grey),
                  ),
                ),
                ...homeCtrl.doneTodos.map(
                  (element) => Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 3.0.wp,
                      horizontal: 9.0.wp,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Icons.done, color: blue),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0.wp),
                          child: Text(
                            element['title'],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}

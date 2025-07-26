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
        onTap: () async {
          await Get.defaultDialog(
            titlePadding: EdgeInsets.symmetric(vertical: 5.0.wp),
            radius: 5,
            title: 'Task Type',
            content: Form(
              child: Column(
                children: [
                  Padding(
                    // 左右+上下
                    padding:  EdgeInsets.symmetric(horizontal: 3.0.wp),
                    child: TextFormField(
                      controller: homeCtrl.editCtrl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Title',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter a title';
                        }
                        return null;
                      },
                    ),
                  ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 5.0.wp),
                 child:  Wrap(
                    spacing: 2.0.wp,
                    children:
                    icons.map((e)=>Obx((){
                      final index = icons.indexOf(e);
                      return ChoiceChip(
                        selectedColor: Colors.grey[200],
                        pressElevation: 0,
                        backgroundColor: Colors.white,
                        label: e,
                        showCheckmark: false,//不用打勾标记
                        selected: homeCtrl.chipIndex.value ==index,
                        onSelected: (bool selected) {
                          homeCtrl.chipIndex.value = selected?index:0;
                        }
                      );
                    })).toList(),
                  )
               ,) ],
              ),
            ),
          );
        },
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

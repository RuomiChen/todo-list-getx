import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/extensions.dart';
import 'package:flutter_application_1/app/core/values/colors.dart';
import 'package:flutter_application_1/app/modules/home/controller.dart';
import 'package:flutter_application_1/app/modules/home/widgets/add_card.dart';
import 'package:flutter_application_1/app/modules/home/widgets/task_card.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style: TextStyle(
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks.map(
                    (element) => LongPressDraggable(
                      data: element,
                      onDragStarted: () => controller.changeDeleting(true),
                      onDraggableCanceled: (_, __) =>
                          controller.changeDeleting(false),
                      onDragEnd: (_) => controller.changeDeleting(false),
                      feedback: Opacity(
                        opacity: 0.8,
                        child: TaskCard(task: element),
                      ),
                      child: TaskCard(task: element),
                    ),
                  ),
                  AddCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
        
          foregroundColor: Colors.white,
          backgroundColor: controller.deleting.value
              ? Colors.red
              : blue,
          onPressed: () {},
          child: Icon(controller.deleting.value ? Icons.delete : Icons.add),
        ),
      ),
    );
  }
}

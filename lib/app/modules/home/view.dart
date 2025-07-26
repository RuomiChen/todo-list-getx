import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/extensions.dart';
import 'package:flutter_application_1/app/data/models/task.dart';
import 'package:flutter_application_1/app/modules/home/controller.dart';
import 'package:flutter_application_1/app/modules/home/widgets/add_card.dart';
import 'package:flutter_application_1/app/modules/home/widgets/task_card.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style: TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(crossAxisCount: 2,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              TaskCard(task: Task(
                title:'title',
                icon:0xe59c,
                color: '#ff2b60e6'
              )),
              AddCard()],
            )
          ],
        ),
      ),
    );
  }
}

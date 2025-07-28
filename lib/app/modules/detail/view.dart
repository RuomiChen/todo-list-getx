import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/controller.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
   DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(children: [
        Row(children: [
          IconButton(onPressed: (){
            Get.back();
          }, icon: const Icon(Icons.arrow_back))
        ],)
      ],)
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/data/models/task.dart';
import 'package:flutter_application_1/app/data/services/storage/repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});
  final formKey = GlobalKey<FormState>();
  final editCtrl = TextEditingController();
  final chipIndex = 0.obs;
  final tasks = <Task>[].obs;
  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTasks());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }

  @override
  void onClose() {
    super.onClose();
  }
  void changeChipIndex(int index) {
    chipIndex.value = index;
  }
  bool addTask(Task task) {
    if (tasks.contains(task)) {
      return false; // Task already exists
    }
    tasks.add(task);
    return true; // Task added successfully
  }
}

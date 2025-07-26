import 'dart:convert';

import 'package:flutter_application_1/app/core/utils/keys.dart';
import 'package:flutter_application_1/app/data/models/task.dart';
import 'package:flutter_application_1/app/data/services/storage/services.dart';
import 'package:get/instance_manager.dart';

class TaskProvider {
  final _storage = Get.find<StorageService>();
  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(
      _storage.read(taskKey).toString(),
    ).forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}

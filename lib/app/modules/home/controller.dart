import 'package:flutter_application_1/app/data/services/storage/repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});
}
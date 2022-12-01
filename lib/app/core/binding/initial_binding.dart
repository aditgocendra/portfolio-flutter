import 'package:get/get.dart';
import 'package:portfolio/app/core/binding/repository_binding.dart';
import 'package:portfolio/app/core/binding/service_binding.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    ServiceBinding().dependencies();
    RepositoryBinding().dependencies();
  }
}

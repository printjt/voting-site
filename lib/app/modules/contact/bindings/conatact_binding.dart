

import 'package:get/get.dart';
import 'package:voting/app/modules/contact/controllers/contact_controller.dart';


class ContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController>(
      () => ContactController(),
    );
  }
}

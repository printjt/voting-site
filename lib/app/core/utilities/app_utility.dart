import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../widgets/pre_loader_widget.dart';

class AppUtility extends GetxService {
  static AppUtility get to => Get.find<AppUtility>();

  @override
  Future<AppUtility> init() async {
    return this;
  }

  String getDateTimeFormatted() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('ddMMyyhhmmss');
    final String formatted = formatter.format(now);
    return formatted;
  }
}

class AppUtils {

  static TextStyle textStyle = const TextStyle(color: Colors.white);

  static bool isPreloading = false;

  static SnackbarStatus? _oldSnackStatus;

  static bool get isSnackbarOpened => _oldSnackStatus != SnackbarStatus.OPEN;

  static Future<void> hidePreloader() async {
    // if (!isPreloading) return;
    isPreloading = false;
    print("isSnackBarOpen: ${Get.isSnackbarOpen}");
    if (!Get.isSnackbarOpen) {
      const Duration(milliseconds: 500).delay(() {
        print("${Get.isSnackbarOpen} ${Get.isDialogOpen}");
        Get.back();
      });
    }
  }

  static Future<void> showPreloader() async {
    // if (isPreloading) return;
    isPreloading = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.dialog(
        WillPopScope(onWillPop: () async => false, child: const Center(child: PreloaderCircular())),
        barrierColor: Colors.white.withOpacity(0.1),
        barrierDismissible: false,
      );
      // executes after build
    });
  }

  static Future<void> showPreloaderWithMessage(String message) async {
    // if (isPreloading) return;
    isPreloading = true;

    Get.dialog(
      Center(child: PreloaderWithMessage(label: message)),
      barrierColor: Colors.white.withOpacity(0.5),
      barrierDismissible: false,
    );
  }

  static void showError(
      String errors,
      String title, {
        // String title = 'Error:',
        SnackbarStatusCallback? onStatus,
      }) {
    print("isPreloading: $isPreloading isDialogOpen: ${Get.isDialogOpen}");
    if (isPreloading && Get.isDialogOpen!) {
      hidePreloader();
    }

    const Duration(milliseconds: 510).delay(() => Get.snackbar(
      title,
      errors,
      colorText: Colors.white,
      borderRadius: 0,
      snackbarStatus: (status) {
        _oldSnackStatus = status;
        if (onStatus != null) {
          onStatus.call(status);
        }
      },
      backgroundColor: Colors.red.shade900,
      icon: const Icon(Icons.error, color: Colors.white),
      animationDuration: 0.45.seconds,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      overlayColor: Colors.white54,
      overlayBlur: .1,
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      snackStyle: SnackStyle.GROUNDED,
      snackPosition: SnackPosition.BOTTOM,
    ));
  }

  static void showSuccess(
      String message, {
        String? title,
        SnackbarStatusCallback? onStatus,
      }) {
    if (isPreloading && Get.isDialogOpen!) {
      hidePreloader();
    }
    const Duration(milliseconds: 1500).delay(() => Get.snackbar(
      title ?? '',
      message,
      colorText: Colors.white,
      borderRadius: 0,
      backgroundColor: Colors.green.shade800,
      icon: const Icon(Icons.check, color: Colors.white),
      snackbarStatus: (status) {
        _oldSnackStatus = status;
        if (onStatus != null) {
          onStatus.call(status);
        }
      },
      animationDuration: 0.3.seconds,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      shouldIconPulse: false,
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      overlayColor: Colors.white54,
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.BOTTOM,
    ));
  }

  static void showInfo(
      String message, {
        String title = '',
        SnackbarStatusCallback? onStatus,
      }) {
    if (isPreloading && Get.isDialogOpen!) {
      hidePreloader();
    }
    Get.snackbar(
      title,
      message,
      colorText: Colors.white,
      borderRadius: 0,
      backgroundColor: Colors.yellow.shade700,
      icon: const Icon(Icons.info, color: Colors.white),
      snackbarStatus: (status) {
        _oldSnackStatus = status;
        if (onStatus != null) {
          onStatus.call(status);
        }
      },
      animationDuration: 0.3.seconds,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      shouldIconPulse: false,
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      overlayColor: Colors.white54,
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

class AppValidation {
  static String? amountGreaterThanZero(String? value) {
    if (double.parse(value!) > 0 ) {
      if(value!.contains(".")){
        if (value!.split(".")[1].length > 2 || value!.split(".")[1].isEmpty){
          return "Amount must only contain two numbers or less after decimal point".tr;
        }
      } else{
        return null;
      }
    } else {
      return "Amount must be greater than zero".tr;
    }
  }

  static String? numOnly(String? value){
    if(!RegExp(r"^[0-9]+$|[.][0-9]+$").hasMatch(value!)){
      return "Amount must only contain numbers".tr;
    }
  }


}

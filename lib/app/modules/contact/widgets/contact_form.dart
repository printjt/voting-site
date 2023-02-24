import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as responsive;
import 'package:voting/app/core/utilities/app_utility.dart';

import '../controllers/contact_controller.dart';

class ContactForm extends GetView<ContactController> {
  ContactForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Center(
          child: SizedBox(
            width: responsive.Device.screenType == responsive.ScreenType.tablet
                ? 27.78.w
                : 75.w,
            child: Column(
              children: [
                SizedBox(
                  height: 2.74.h,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      labelStyle: const TextStyle(color: Colors.white),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 2.74.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: const TextStyle(color: Colors.white),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 2.74.h,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: const TextStyle(color: Colors.white),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 2.74.h,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  maxLines: 5,
                  decoration: InputDecoration(
                      labelText: "Comments",
                      labelStyle: const TextStyle(color: Colors.white),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          borderSide: const BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 2.74.h,
                ),
                ElevatedButton(
                  onPressed: () async{
                    if (_formKey.currentState!.validate()) {
                      AppUtils.showSuccess("Success");
                    }
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(25.w, 5.h)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.69.w),
                          side: const BorderSide(color: Colors.white)))),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

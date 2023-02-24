// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/contact_controller.dart';

class AddMember extends GetView<ContactController> {
  final int? index;
   String text = "";

   AddMember({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 25.w,
      child: Column(
        children: [
          Flexible(
            child: TextFormField(
              onChanged: (value) {
                text = value;
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  labelText: "Member Name",
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

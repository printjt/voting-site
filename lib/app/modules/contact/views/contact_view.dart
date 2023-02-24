// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as responsive;
import 'package:voting/app/modules/contact/widgets/contact_form.dart';

import '../../../routes/app_pages.dart';
import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  String fileName = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Voting System",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: "Merriweather"),
        ),
        // leading: Icon(Icons.menu),
        actions: [
          InkWell(
            onTap: () => Get.offAllNamed(Routes.HOME),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 1.39.w, right: 1.39.w, top: 2.74.h, bottom: 2.74.h),
                child: Text(
                  "About Us",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        height: Get.height,
        child: ListView(
          children:[Column(
            children: [
              Container(
                width: Get.width,
                color: Colors.white,
                child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 75,
                        ),
                        Text(
                          "CONTACT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 27.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.89.w),
                          child: Text(
                            "US NOW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 27.sp),
                          ),
                        ),
                        SizedBox(
                          height: 10.26.h,
                        ),
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 3.47.w, right: 3.47.w, top: 6.84.h, bottom: 6.84.h),
                color: Colors.black,
                child: Center(
                  child: Column(
                    children: [
                      responsive.Device.screenType ==
                          responsive.ScreenType.tablet
                          ? Row(
                        children: [
                          SizedBox(
                            width: 17.36.w,
                          ),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "Voting",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.sp),
                              )),
                          SizedBox(
                            width: 13.89.w,
                          ),
                          ContactForm()
                        ],
                      )
                          : ContactForm()
                    ],
                  ),
                ),
              )
            ],
          )] ,
        ),
      ),
    );
  }
}

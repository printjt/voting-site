// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../routes/app_pages.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 13.68.h,
        backgroundColor: Colors.black,
        title: Text(
          "Voting System",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Merriweather",
              fontSize: 20.sp),
        ),
        // leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                left: 1.w, right: 1.w, top: 4.1.h, bottom: 4.1.h),
            child: ElevatedButton(
              onPressed: () async {
                Get.toNamed(Routes.CONTACT);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.white))),
              child: Text(
                "Contact Us",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: Get.width,
                  color: Colors.yellow,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 10.26.h,
                        ),
                        Text("Who we are?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.sp,
                                fontFamily: "Merriweather")),
                        SizedBox(
                          height: 10.26.h,
                        ),
                      ],
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(
                    left: 3.47.w, right: 3.47.w, top: 6.84.h, bottom: 6.84.h),
                width: Get.width,
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nec tellus non magna blandit "
                                "consequat quis eu dui. Fusce egestas dui in magna finibus, quis interdum leo vehicula. Nullam sollicitudin "
                                "tempor sodales. Fusce ac sodales nunc. Donec aliquet velit ut nulla luctus, non tristique ex iaculis."
                                " Aliquam gravida, nisl ac semper laoreet, lorem eros feugiat augue, ac tristique velit orci in ex."
                                " Vestibulum quis ipsum arcu. Aliquam eu odio suscipit, rutrum nibh id, convallis erat. Duis vitae"
                                " nulla interdum, commodo odio quis, luctus mauris. Ut quis nisl dui. Aliquam eget sapien non enim"
                                " congue vehicula. Maecenas vehicula neque sed elit lacinia, vel commodo felis fermentum. Curabitur"
                                " quis semper dui, quis mollis nulla.",
                            style: TextStyle(color: Colors.white,fontSize: 17.sp),
                          ),
                        ),
                        Image.asset("assets/hamdok.jpg",width: 20.w,height: 100.h,fit: BoxFit.fitHeight,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

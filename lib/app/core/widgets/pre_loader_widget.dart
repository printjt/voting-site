import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../constants/app_colors.dart';

class PreloaderCircular extends StatelessWidget {
  final double size;
  final EdgeInsets? padding;
  final Color preloaderColor;
  final Color? preloaderInactiveColor;
  final Color bgColor;

  const PreloaderCircular({
    Key? key,
    this.size = 64,
    this.padding,
    this.bgColor = Colors.white,
    this.preloaderColor = AppColors.maxPayJungleGreen,
    this.preloaderInactiveColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.height,
        height: Get.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        padding: padding ?? const EdgeInsets.all(10),
        child: Lottie.asset('assets/loading.json'),
      ),
    );
  }
}

class PreloaderWithMessage extends StatelessWidget {
  final String? label;
  final double? preloaderSize;
  final double? fontSize;

  const PreloaderWithMessage({
    Key? key,
    this.label,
    this.preloaderSize,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PreloaderCircular(
          size: preloaderSize ?? 32.0,
          padding: const EdgeInsets.all(35.0),
        ),
        const SizedBox(height: 8),
        Text(
          label ?? 'LOADING',
          style: const TextStyle(
            color: AppColors.maxPayJungleGreen,
            fontWeight: FontWeight.w400,
          ).copyWith(
            fontSize: fontSize ?? 14,
          ),
        )
      ],
    );
  }
}

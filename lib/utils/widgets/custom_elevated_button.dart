import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
<<<<<<< HEAD
  final Function()? onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
  });
=======
  final Function()? onTap ;

  const CustomButton({super.key, required this.text, this.onTap,});
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
<<<<<<< HEAD
      width: width * .7,
=======
      width: width*.7,
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
<<<<<<< HEAD
              color: AppColors.greenColor,
              borderRadius: BorderRadius.circular(12)),
=======
            color: AppColors.greenColor,
            borderRadius: BorderRadius.circular(12)
          ),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Center(
              child: Text(
                text,
<<<<<<< HEAD
                style: AppTextStyle.styleMedium18
                    .copyWith(color: AppColors.whiteColor),
=======
                style: AppTextStyle.styleMedium18.copyWith(color: AppColors.whiteColor),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
              ),
            ),
          ),
        ),
      ),
    );
  }
}

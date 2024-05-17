import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialMediaContainer extends StatelessWidget {
  final String text;
  final String image;

  const CustomSocialMediaContainer(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.appBackgroundColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppTextStyle.styleMedium18.copyWith(
                color: AppColors.greyTextColor, fontWeight: FontWeight.w400),
          )
        ],
=======
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 150,
        child: Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  image,
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: AppTextStyle.styleMedium18.copyWith(
                      color: AppColors.greyTextColor,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
      ),
    );
  }
}

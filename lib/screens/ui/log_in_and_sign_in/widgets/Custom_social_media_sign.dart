import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialMediaContainer extends StatelessWidget {
  final String text;
  final String image;

  const CustomSocialMediaContainer(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}

import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
<<<<<<< HEAD
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
=======
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
import 'package:flutter/material.dart';

import 'data/custompatientmodel.dart';

class CustomPatientScreenContainer extends StatelessWidget {
<<<<<<< HEAD
  final int index;
  const CustomPatientScreenContainer({
    super.key,
=======
  final int index ;
  const CustomPatientScreenContainer({super.key,
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
<<<<<<< HEAD
      height: height * .23,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColors.whiteColor),
=======
      height: height*.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.whiteColor
      ),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
<<<<<<< HEAD
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(
                    "${PatientModel.patient[index].imagePath}",
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: width * .467,
=======
                  width: width*.23,
                  height: height*.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset("${PatientModel.patient[index].imagePath}",),
                ),
                const SizedBox(width: 20,),
                SizedBox(
                  width: width*.467,
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
<<<<<<< HEAD
                        Text(
                          PatientModel.patient[index].Name,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          PatientModel.patient[index].Description,
                          style: AppTextStyle.styleRegular15
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          PatientModel.patient[index].Time,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
=======
                        Text(PatientModel.patient[index].Name
                          ,style: AppTextStyle.styleMedium18,),
                        const SizedBox(height: 5,),
                        Text(PatientModel.patient[index].Description
                          ,style: AppTextStyle.styleRegular15.copyWith(color: AppColors.greenColor),),
                        const SizedBox(height: 5,),
                        Text(PatientModel.patient[index].Time
                          ,style: AppTextStyle.styleRegular15,),
                        const SizedBox(height: 3,),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                      ],
                    ),
                  ),
                ),
              ],
            ),
<<<<<<< HEAD
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
=======
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 10.0,left: 10),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
<<<<<<< HEAD
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Text(
                        AppStrings.accept,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.whiteColor),
=======
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenColor,
                        shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                      child: Text(
                        AppStrings.accept,
                        style: AppTextStyle.styleMedium18.copyWith(color: AppColors.whiteColor),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                      ),
                    ),
                  ),
                  ElevatedButton(
<<<<<<< HEAD
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Text(
                        AppStrings.decline,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
=======
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenColor,
                        shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                      child: Text(
                        AppStrings.decline,
                        style: AppTextStyle.styleMedium18.copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  )



                ],
              ),
            )

          ],
        ),
      ),

>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
    );
  }
}

import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
<<<<<<< HEAD
=======
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../patient_home/data/mydoctorsmodel.dart';

class CustomMyDoctorsContainer extends StatelessWidget {
<<<<<<< HEAD
  final int index;
  const CustomMyDoctorsContainer({
    super.key,
=======
  final int index ;
  CustomMyDoctorsContainer({super.key,
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
      height: height * .29,
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(10)),
=======
      height: height*.29,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10)
      ),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    MyDoctorModel.DoctorModel[index].imagePath,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * .467,
=======
                  width: width*.23,
                  height: height*.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset("${MyDoctorModel.DoctorModel[index].imagePath}",),

                ),
                const SizedBox(width: 10,),
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
                          MyDoctorModel.DoctorModel[index].Name,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          MyDoctorModel.DoctorModel[index].SubTittle,
                          style: AppTextStyle.styleRegular15
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          MyDoctorModel.DoctorModel[index].Description,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              MyDoctorModel.DoctorModel[index].FirstRatio,
                              style: AppTextStyle.styleRegular15,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              MyDoctorModel.DoctorModel[index].SecRatio,
                              style: AppTextStyle.styleRegular15,
                            ),
=======
                         Text(MyDoctorModel.DoctorModel[index].Name,style: AppTextStyle.styleMedium18,),
                        const SizedBox(height: 3,),
                        Text(MyDoctorModel.DoctorModel[index].SubTittle,style: AppTextStyle.styleRegular15.copyWith(color: AppColors.greenColor),),
                        const SizedBox(height: 3,),
                         Text(MyDoctorModel.DoctorModel[index].Description,style: AppTextStyle.styleRegular15,),
                        const SizedBox(height: 3,),
                         Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,


                            ),
                            SizedBox(width: 3,),
                            Text(MyDoctorModel.DoctorModel[index].FirstRatio,style: AppTextStyle.styleRegular15,),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,


                            ),
                            SizedBox(width: 3,),
                            Text(MyDoctorModel.DoctorModel[index].SecRatio,style: AppTextStyle.styleRegular15,),


>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                          ],
                        )
                      ],
                    ),
                  ),
                ),
<<<<<<< HEAD
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.heart,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.doctorDate,
                  style: AppTextStyle.styleMedium18
                      .copyWith(color: AppColors.greenColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  MyDoctorModel.DoctorModel[index].Date,
                  style: AppTextStyle.styleMedium18
                      .copyWith(color: AppColors.greyTextColor),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: width,
                child: const CustomButton(text: AppStrings.booked))
          ],
        ),
      ),
    );
=======
                IconButton(onPressed: (){}, icon:const Icon(Iconsax.heart,))
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.doctorDate,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greenColor),),
                const SizedBox(width: 10,),
                Text(MyDoctorModel.DoctorModel[index].Date,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),




              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
                width: width,
                child: CustomButton(text: AppStrings.booked))

          ],
        ),
      ),



    );

>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
  }
}

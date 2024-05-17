import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/doctor_details/doctor_details_screen.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
<<<<<<< HEAD
=======
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../data/newpopulardoctormodel.dart';

class CustomPopularDoctorContainer extends StatelessWidget {
<<<<<<< HEAD
  final int index;
  const CustomPopularDoctorContainer({
    super.key,
=======
  final int index ;
  const CustomPopularDoctorContainer({super.key,
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
<<<<<<< HEAD
        onTap: () {
=======
        onTap: (){
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
          Navigator.pushNamed(context, DoctorDetailsScreen.routeName);
        },
        child: Container(
          width: width * .4,
          height: height * .28,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.whiteColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "${NewPopularDoctorModel.PopularDoctor[index].imagePath}",
                fit: BoxFit.cover,
<<<<<<< HEAD
                height: height * .15,
=======
                height: height*.15,
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
              ),
              const SizedBox(
                height: 5,
              ),
<<<<<<< HEAD
              Text(
                NewPopularDoctorModel.PopularDoctor[index].Name,
                style: AppTextStyle.styleRegular15
                    .copyWith(color: AppColors.blackTextColor),
=======
               Text(
                NewPopularDoctorModel.PopularDoctor[index].Name,
                style: AppTextStyle.styleRegular15.copyWith(color: AppColors.blackTextColor),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                NewPopularDoctorModel.PopularDoctor[index].Description,
                style: AppTextStyle.styleRegular15.copyWith(fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              RatingBar.builder(
                itemSize: 20,
                initialRating: 3,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

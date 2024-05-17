import 'package:fibrohospital/screens/ui/doctor/doctor_setting/custom_doctor_notification_container.dart';
<<<<<<< HEAD
=======
import 'package:fibrohospital/utils/widgets/custom_notification_container.dart';
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

import '../../general_screen/notficationmodel.dart';


class DoctorNotificationsScreen extends StatefulWidget {
  static const String routeName = 'DoctorNotificationsScreen';

  const DoctorNotificationsScreen({super.key});

  @override
  State<DoctorNotificationsScreen> createState() => _DoctorNotificationsScreenState();
}

class _DoctorNotificationsScreenState extends State<DoctorNotificationsScreen> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CustomArrowBack(),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          AppStrings.notifications,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Switch(
                          value: isActive,
                          activeColor: AppColors.greenColor,
                          onChanged: (value) {
                            setState(() {
                              isActive = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                        itemCount: NotificationModel.doctornoti.length,
                        itemBuilder: (context, index) {
                          return  CustomDoctorNotificationContainer(index: index,);
                        },
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

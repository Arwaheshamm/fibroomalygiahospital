<<<<<<< HEAD
=======
import 'package:fibrohospital/screens/ui/patient/patient_home/patient_home_screen.dart';
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/data/appointmentmodel.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../ahella/Features/Payment/Presentation/views/payment_options_view.dart';
<<<<<<< HEAD

class DoctorAppointmentScreen2 extends StatelessWidget {
  final int index;
  const DoctorAppointmentScreen2({
    super.key,
    required this.index,
  });
  static const String routeName = 'DoctorAppointmentScreen2';
=======
import 'doctor_appointment_screen.dart';


class DoctorAppointmentScreen2 extends StatelessWidget {
  final int index ;
  const DoctorAppointmentScreen2({super.key,required this.index,
  });
  static const String routeName = 'DoctorAppointmentScreen2' ;
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
<<<<<<< HEAD
              padding: const EdgeInsets.only(right: 20.0, left: 20),
=======
              padding: const EdgeInsets.only(right: 20.0,left: 20),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomArrowBack(),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            AppStrings.appointments,
                            style: AppTextStyle.styleMedium18,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
<<<<<<< HEAD
                    const SizedBox(
                      height: 20,
                    ),
=======
                    const SizedBox(height: 20,),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                    TableCalendar(
                      focusedDay: DateTime.now(),
                      headerStyle: HeaderStyle(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.greenColor),
                        headerMargin: const EdgeInsets.only(bottom: 10),
                      ),
                      calendarStyle: CalendarStyle(
                          todayDecoration: BoxDecoration(
                              color: AppColors.greenColor,
                              borderRadius: BorderRadius.circular(40))),
                      firstDay: DateTime(2024),
                      lastDay: DateTime.now(),
                      onFormatChanged: (format) {},
                      onDaySelected: (selectedDay, focusedDay) {},
                    ),
<<<<<<< HEAD
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height * .45,
                        width: width,
                        decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
=======
                    const SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height:height*.45,
                        width: width,
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(20) ,
                            topRight: Radius.circular(20)
                          )
                        ),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
<<<<<<< HEAD
                              const Text(
                                AppStrings.availableTime,
                                style: AppTextStyle.styleMedium18,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: height * .1,
                                  width: width,
                                  child: ListView.builder(
                                    itemCount:
                                        docAppointmentModel.appointment.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundColor:
                                              AppColors.lightGreenColor,
                                          child: Text(
                                            docAppointmentModel
                                                .appointment[index].Time,
                                            textAlign: TextAlign.center,
                                            style: AppTextStyle.styleMedium18
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
=======
                              const Text(AppStrings.availableTime,style: AppTextStyle.styleMedium18,),
                              const SizedBox(height: 20,),
                              SizedBox(
                                  height: height*.1,
                                  width: width,
                                  child: ListView.builder(
                                    itemCount: docAppointmentModel.appointment.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 5.0),
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundColor: AppColors.lightGreenColor,
                                          child: Text(
                                            docAppointmentModel.appointment[index].Time,
                                              textAlign: TextAlign.center
                                              ,style: AppTextStyle.styleMedium18.copyWith(fontWeight: FontWeight.w400),),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                                        ),
                                      );
                                    },
                                  )),
<<<<<<< HEAD
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                AppStrings.reminderMeBefore,
                                style: AppTextStyle.styleMedium18,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: height * .1,
                                  width: width,
                                  child: ListView.builder(
                                    itemCount:
                                        docAppointmentModel.appointment.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
=======

                              const SizedBox(height: 20,),
                              const Text(AppStrings.reminderMeBefore,style: AppTextStyle.styleMedium18,),
                              const SizedBox(height: 20,),
                              SizedBox(
                                  height: height*.1,
                                  width: width,
                                  child: ListView.builder(
                                    itemCount: docAppointmentModel.appointment.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 5.0),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundColor: AppColors.greenColor,
                                          child: Text(
<<<<<<< HEAD
                                            docAppointmentModel
                                                .appointment[index].Minutes,
                                            textAlign: TextAlign.center,
                                            style: AppTextStyle.styleMedium18
                                                .copyWith(
                                                    color: AppColors.whiteColor,
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
=======
                                            docAppointmentModel.appointment[index].Minutes,
                                            textAlign: TextAlign.center
                                            ,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.w400),),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                                        ),
                                      );
                                    },
                                  )),
<<<<<<< HEAD
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return PaymentOptionsView();
                                        }));
                                      },
                                      child: CustomButton(
                                          text: 'Choose Payment Method')))
                            ],
                          ),
                        ),
                      ),
                    )
=======
                              const SizedBox(height: 20,),
                               Center(child: InkWell(onTap: (){Navigator.pushReplacement(
                                   context,MaterialPageRoute(builder: (context){return PaymentOptionsView();}));},child: CustomButton(text: 'Choose Payment Method')))



                            ],
                          ),
                        ),

                      ),
                    )


>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

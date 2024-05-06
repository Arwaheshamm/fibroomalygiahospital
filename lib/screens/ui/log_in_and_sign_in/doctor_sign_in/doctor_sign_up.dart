import 'package:fibrohospital/screens/ui/doctor/general_doctor_home_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/utils/constants.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DoctorSignUp extends StatefulWidget {
  static const String routeName = 'DoctorSignUp';

   DoctorSignUp({super.key});


  @override
  State<DoctorSignUp> createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<DoctorSignUp> {
  late bool currentBool = false;
  TextEditingController ?doctoremailController = TextEditingController();
  TextEditingController ?doctorpassController = TextEditingController();
  TextEditingController ?doctornameController = TextEditingController();
  GlobalKey<FormState> doctoremailkey =GlobalKey();
  GlobalKey<FormState> doctorpasskey =GlobalKey();
  GlobalKey<FormState> doctornamekey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const CustomBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: ListView(children: [
                Column(
                  children: [
                    SizedBox(
                      height: height * .15,
                    ),
                    Text(
                      AppStrings.doctorSignUpTitle,
                      style: AppTextStyle.styleRegular28.copyWith(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      AppStrings.patientSignUpDesc,
                      style: AppTextStyle.styleRegular15,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const CustomSocialMediaContainer(
                                text: AppStrings.google,
                                image: AppAssets.google),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const CustomSocialMediaContainer(
                                text: AppStrings.facebook,
                                image: AppAssets.facebook),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                     CustomTextField(text: AppStrings.name,
                       tController: doctornameController,formstate:doctornamekey,),
                    const SizedBox(
                      height: 10,
                    ),
                   CustomTextField(text: AppStrings.email,
                       tController: doctoremailController,formstate:doctoremailkey),
                    const SizedBox(
                      height: 10,
                    ),
                     CustomTextField(
                      text: AppStrings.password,tController: doctorpassController,
                      isPass: true,formstate:doctorpasskey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: currentBool,
                          onChanged: (newValue) {
                            setState(() {
                              currentBool = newValue!;
                            });
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          activeColor: AppColors.greenColor,
                        ),
                        Text(
                          AppStrings.terms,
                          style: AppTextStyle.styleRegular15
                              .copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .06,
                    ),
                    CustomButton(
                        text: AppStrings.signup,
                        onTap: ()async {
                          try {
                          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email:doctoremailController!.text,
                            password:doctorpassController!.text,
                          );

                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                        if(doctoremailkey.currentState!.validate()){
                          print ("Email valid");
                        }else{
                          print ("Email Not valid");
                        }
                          if(doctorpasskey.currentState!.validate()){
                            print ("Pass valid");
                          }else{
                            print ("Pass Not valid");
                          }
                          routeHomeName = GeneralDoctorHomeScreen.routeName;
                          Navigator.pushNamed(
                              context, GeneralDoctorHomeScreen.routeName);
                        }),
                    TextButton(
                      onPressed: ()  {

                        Navigator.pushNamed(context, DoctorLogIn.routeName);
                      },
                      child: Text(
                        AppStrings.haveAnAccount,
                        style: AppTextStyle.styleRegular15.copyWith(
                            fontSize: 14, color: AppColors.greenColor),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

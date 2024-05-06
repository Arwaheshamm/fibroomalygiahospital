import 'package:fibrohospital/screens/ui/patient/general_patient_home_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/utils/constants.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PatientSignUp extends StatefulWidget {
  static const String routeName = 'PatientSignUp';

  const PatientSignUp({super.key});

  @override
  State<PatientSignUp> createState() => _PatientSignUpState();
}

class _PatientSignUpState extends State<PatientSignUp> {
  late bool currentBool = false;
  TextEditingController patientNameController =TextEditingController();
  TextEditingController patientEmailController =TextEditingController();
  TextEditingController patientPassController =TextEditingController();
  GlobalKey<FormState> patientEmailKey =GlobalKey();
  GlobalKey<FormState> patientPassKey  =GlobalKey();
  GlobalKey<FormState> patientNameKey =GlobalKey();

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .20,
                    ),
                    Text(
                      AppStrings.patientSignUpTitle,
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
                        tController: patientNameController,formstate:patientNameKey),
                    const SizedBox(
                      height: 10,
                    ),
                     CustomTextField(text: AppStrings.email,
                       tController: patientEmailController,formstate:patientEmailKey),
                    const SizedBox(
                      height: 10,
                    ),
                     CustomTextField(
                      text: AppStrings.password,tController: patientPassController,
                      isPass: true,formstate:patientPassKey
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
                        onTap: ()async  {
                          try {
                            final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email:patientEmailController.text,
                              password:patientPassController.text,
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
                          routeHomeName = GeneralPatientHomeScreen.routeName;
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context){return GeneralPatientHomeScreen();}));
                        }),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PatientLogIn.routeName);
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
              ),
            ),
          )
        ],
      ),
    );
  }
}

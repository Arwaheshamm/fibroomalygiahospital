import 'package:fibrohospital/screens/ui/patient/general_patient_home_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_sign_up.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_reset_password_container.dart';
import 'package:fibrohospital/utils/constants.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class PatientLogIn extends StatelessWidget {

  static const String routeName = 'PatientLogIn';
  TextEditingController ?emailController = TextEditingController();
  TextEditingController ?passController = TextEditingController();
  GlobalKey<FormState> patientEmailKey =GlobalKey();
  GlobalKey<FormState> patientPassKey  =GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const CustomBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .20,
                    ),
                    Text(
                      AppStrings.welcomeBack,
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
                     CustomTextField(text: AppStrings.email,
                         tController: emailController,formstate:patientEmailKey),
                    const SizedBox(
                      height: 10,
                    ),
                     CustomTextField(tController: passController,
                      text: AppStrings.password,formstate: patientPassKey,
                      isPass: true,
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    CustomButton(
                        text: AppStrings.login,
                        onTap: ()async{
                          try {
                            final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email:emailController!.text,
                              password:passController!.text,
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
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context){return GeneralPatientHomeScreen();}));
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          builder: (context) {
                            return  CustomResetPasswordContainer();
                          },
                        );
                      },
                      child: Text(
                        AppStrings.forgotPassword,
                        style: AppTextStyle.styleRegular15.copyWith(
                            fontSize: 14, color: AppColors.greenColor),
                      ),
                    ),
                    SizedBox(
                      height: height * .1,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PatientSignUp.routeName);
                      },
                      child: Text(
                        AppStrings.doNotHaveAnAccount,
                        style: AppTextStyle.styleRegular15.copyWith(
                            fontSize: 14, color: AppColors.greenColor),
                      ),
                    ),
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

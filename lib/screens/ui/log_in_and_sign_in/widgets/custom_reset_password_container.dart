import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD
class CustomResetPasswordContainer extends StatefulWidget {
  const CustomResetPasswordContainer({super.key});

  @override
  State<CustomResetPasswordContainer> createState() =>
      _CustomResetPasswordContainerState();
}

class _CustomResetPasswordContainerState
    extends State<CustomResetPasswordContainer> {
  TextEditingController? passController = TextEditingController();

  TextEditingController? rpassController = TextEditingController();

  GlobalKey<FormState> rpassKey = GlobalKey();

  GlobalKey<FormState> passKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
=======
class CustomResetPasswordContainer extends StatelessWidget {

  TextEditingController ?passController = TextEditingController();
  TextEditingController ?rpassController = TextEditingController();
  GlobalKey<FormState>rpassKey =GlobalKey();
  GlobalKey<FormState> passKey  =GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .60,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 100,
                decoration: BoxDecoration(
                    color: AppColors.greyTextColor,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                AppStrings.resetPassword,
                style: AppTextStyle.styleRegular25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              AppStrings.resetPasswordDesc,
              style: AppTextStyle.styleRegular15
                  .copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 25,
            ),
<<<<<<< HEAD
            CustomTextField(
                text: AppStrings.newPassword,
                isPass: true,
                tController: passController,
                formstate: passKey),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              text: AppStrings.reEnterPassword,
              isPass: true,
              tController: rpassController,
              formstate: rpassKey,
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: CustomButton(
              onTap: () {
                Navigator.pop(context);
              },
=======
             CustomTextField(text: AppStrings.newPassword,isPass: true,
                 tController:passController,formstate:passKey ),
            const SizedBox(height: 5,),
             CustomTextField(text: AppStrings.reEnterPassword,
                 isPass: true,tController: rpassController,formstate: rpassKey,),
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: CustomButton(
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
              text: AppStrings.updatePassword,
            )),
          ],
        ),
      ),
    );
  }
}

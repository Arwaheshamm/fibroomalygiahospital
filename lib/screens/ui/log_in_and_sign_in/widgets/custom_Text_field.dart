import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextField extends StatefulWidget {
  final IconData? icon;
<<<<<<< HEAD
  TextEditingController? tController = TextEditingController();
  final String text;
  final bool isPass;
  GlobalKey<FormState> formstate = GlobalKey();
=======
  TextEditingController ?tController = TextEditingController();
  final String text;
  final bool isPass;
  GlobalKey<FormState> formstate =GlobalKey();
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e

  CustomTextField({
    super.key,
    this.icon,
    required this.tController,
    required this.text,
    this.isPass = false,
    required this.formstate,
<<<<<<< HEAD
=======

>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
<<<<<<< HEAD
=======



>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextFormField(
<<<<<<< HEAD
        key: widget.formstate,
        controller: widget.tController,
        onChanged: (value) {
          setState(() {
            widget.tController!.text = value;
=======
        key:widget.formstate,
        controller: widget.tController ,
        onChanged: (value){
          setState(() {
            widget.tController!.text=value;
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
            print(widget.tController);
          });
        },
        validator: (value) {
<<<<<<< HEAD
          if (value!.isEmpty) {
            return "TextField is Empty";
          }
          return null;
=======
          if(value!.isEmpty){
            return "TextField is Empty";
          }
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
        },
        obscureText: widget.isPass ? obscure : false,
        cursorColor: AppColors.greyTextColor,
        decoration: InputDecoration(
          suffixIcon: widget.isPass
              ? IconButton(
<<<<<<< HEAD
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: const Icon(
                    Iconsax.eye_slash,
                    color: AppColors.greyTextColor,
                  ))
=======
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              icon: const Icon(Iconsax.eye_slash,color: AppColors.greyTextColor,))
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
              : const SizedBox(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          labelText: widget.text,
<<<<<<< HEAD
          labelStyle:
              const TextStyle(color: AppColors.greyTextColor, fontSize: 17),
=======
          labelStyle: const TextStyle(color: AppColors.greyTextColor,fontSize: 17),
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
<<<<<<< HEAD
}

class CustomTextFieldTwo extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final void Function(String)? onFieldSubmitted;
  final String? labelText;

  const CustomTextFieldTwo({
    super.key,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.prefixIcon,
    this.validator,
    this.textInputAction,
    this.obscureText,
    this.suffixIcon,
    this.onFieldSubmitted,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText ?? false,
      textInputAction: textInputAction,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: AppColors.appBackgroundColor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greyWhite)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greyWhite)),
        labelText: labelText,
        labelStyle:
            const TextStyle(color: AppColors.greyTextColor, fontSize: 17),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      onFieldSubmitted: (value) {
        onFieldSubmitted;
      },
    );
  }
}
=======
}
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e

import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextField extends StatefulWidget {
  final IconData? icon;
  TextEditingController ?tController = TextEditingController();
  final String text;
  final bool isPass;
  GlobalKey<FormState> formstate =GlobalKey();

  CustomTextField({
    super.key,
    this.icon,
    required this.tController,
    required this.text,
    this.isPass = false,
    required this.formstate,

  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {



  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextFormField(
        key:widget.formstate,
        controller: widget.tController ,
        onChanged: (value){
          setState(() {
            widget.tController!.text=value;
            print(widget.tController);
          });
        },
        validator: (value) {
          if(value!.isEmpty){
            return "TextField is Empty";
          }
        },
        obscureText: widget.isPass ? obscure : false,
        cursorColor: AppColors.greyTextColor,
        decoration: InputDecoration(
          suffixIcon: widget.isPass
              ? IconButton(
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              icon: const Icon(Iconsax.eye_slash,color: AppColors.greyTextColor,))
              : const SizedBox(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          labelText: widget.text,
          labelStyle: const TextStyle(color: AppColors.greyTextColor,fontSize: 17),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
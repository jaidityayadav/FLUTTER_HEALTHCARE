import 'package:flutter/material.dart';
import 'package:medicare/consts/colors.dart';

class CustomTextField extends StatefulWidget {
  final String hint ;
  final TextEditingController? textController;
  final Color textColor;
  final Color bordrColor;
  const CustomTextField({super.key,required this.hint,this.textController,this.textColor=Colors.black,this.bordrColor=Colors.black});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.blueColor,
      decoration: InputDecoration(
        isDense: true,
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: widget.bordrColor),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: widget.bordrColor),
        ),
        border:  OutlineInputBorder(
          borderSide: BorderSide(color: widget.bordrColor),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(color: widget.textColor),
      ),
    );
  }
}
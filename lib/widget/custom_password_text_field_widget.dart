import 'package:flutter/material.dart';
import '../resource/app_colors/app_colors.dart';

class CustomPasswordTextFieldWidget extends StatefulWidget {
  CustomPasswordTextFieldWidget({
    super.key,
    required this.passwordController,
    required this.hintText,
    required this.isObsecure,
  });

  final TextEditingController passwordController;
  final String hintText;
  bool? isObsecure;

  @override
  State<CustomPasswordTextFieldWidget> createState() => _CustomPasswordTextFieldWidgetState();
}

class _CustomPasswordTextFieldWidgetState extends State<CustomPasswordTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      obscureText: widget.isObsecure??true,
      obscuringCharacter: '*',
      
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: AppColors.appBlack.withOpacity(0.3),
              width: 2
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: AppColors.appBlack,
              width: 2
          ),
        ),
        hintText: widget.hintText,
          suffixIcon: IconButton(
              onPressed: (){
                setState(() {
                  if(widget.isObsecure == true){
                    widget.isObsecure = false;
                  } else {
                    widget.isObsecure = true;
                  }
                });
              },
              icon: Icon(widget.isObsecure == true ? Icons.visibility_off : Icons.visibility)
          )
      ),
    );
  }
}
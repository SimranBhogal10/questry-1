import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextEditingController controller;
  final Function onchanged;
  final Function validationFun;

  final bool isObscure;

  const CustomTextField(
      {Key key,
      this.hintText,
      this.prefixIcon,
      this.isObscure = false,
      this.controller,
      this.onchanged,
      this.validationFun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      margin: EdgeInsets.all(16.0),
      child: TextFormField(
        controller: controller,
        onChanged: onchanged,
        obscureText: this.isObscure,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
        validator: (value) => validationFun(value),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              borderSide: BorderSide(color: Colors.white)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              borderSide: BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              borderSide: BorderSide(color: Colors.red)),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 18.0,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

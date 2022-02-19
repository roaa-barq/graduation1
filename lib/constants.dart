import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const greenDark = Color(0xff057A0C);
const greenLight = Color(0xff5FDC68);

class ThemeHelper {
  InputDecoration textInputDecoration(
      [String labelText = "", String hintText = ""]) {
    return InputDecoration(
        labelText: labelText,
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 20,
          color: Colors.black,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.red, width: 2.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.red, width: 2.0)));
  }
}

class loginFormStyle {}



import 'package:Test_Web/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({msg}) {
  Fluttertoast.showToast(
    backgroundColor: AppColors.Blue,
    textColor: Colors.white,
    msg: msg ?? '',
    toastLength: Toast.LENGTH_LONG,
  );
}

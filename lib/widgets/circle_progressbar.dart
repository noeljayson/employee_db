import 'package:flutter/material.dart';
import 'package:Test_Web/config/theme.dart';

Widget showCircleProgress({double size = 30}) => Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          backgroundColor: AppColors.Blue,
          valueColor: new AlwaysStoppedAnimation<Color>(AppColors.loginbgcolor),
        ),
      ),
    );

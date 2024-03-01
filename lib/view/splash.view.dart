import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/Utils/global.colors.dart';
import 'package:food/view/login.view.dart';
import 'package:get/get.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds:1), (){
      Get.to(LoginView());
      });
    return Scaffold(
     backgroundColor:GlobalColors.mainColor,
     body:const Center(
      child: Text(
        'logo' ,
        style: TextStyle(
        color:Colors.white,
        fontSize:35,
        fontWeight:FontWeight.bold,
      ) ,
      ),

     ),
    );
  
  }
}
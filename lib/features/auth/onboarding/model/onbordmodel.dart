import 'dart:ui';

import 'package:flutter/material.dart';

class onboardingModel {
  late String images, titles, subtitle;
  late Color colors;
   onboardingModel(
      { 
       this.colors=Colors.black,
      required this.images,
      required this.subtitle,
      required this.titles});
}

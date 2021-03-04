import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/framework/colors.dart';

const loginMobileDecoration = BoxDecoration(
  color: primary,
);

const loginDecoration = BoxDecoration(
  gradient: LinearGradient(
    stops: [0, 1],
    colors: [
      primary,
      secondary,
    ],
    begin: Alignment(0.032, 0.046),
    end: Alignment(0.96, 0.953),
  ),
);

const loginImageDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/img/login_background_web.png"),
    fit: BoxFit.cover,
  ),
);

const boxSahdow = [
  BoxShadow(
    color: Color(0x1A000000),
    offset: Offset(0, 8),
    blurRadius: 24.0,
  )
];

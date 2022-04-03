import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_web/variables.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

pageStart()=> Container(
  child:  ImageSlideshow(
    width: double.infinity,
    height: 200,
    initialPage: 0,
    indicatorColor: Colors.blue,
    indicatorBackgroundColor: Colors.grey,
    onPageChanged: (value) {
      //debugPrint('Page changed: $value');
    },
    autoPlayInterval: 5000,
    isLoop: true,
    children: [
      Image.asset(
        'assets/images/slide1.png',
        fit: BoxFit.fitWidth,
      ),
      Image.asset(
        'assets/images/slide2.png',
        fit: BoxFit.fitWidth,
      ),
      Image.asset(
        'assets/images/slide3.png',
        fit: BoxFit.fitWidth,
      ),
    ],
  ),
);

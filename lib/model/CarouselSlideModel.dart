import 'package:flutter/material.dart';

class CSlide{
  final String image;
  final String description;
  CSlide({@required this.image, @required this.description});

}

final CSlideList=[
  CSlide(
    image: 'assets/images/startingCarouselSlider1.png',
    description: "Don't cry because it's over,\n"
        "smile because it \n"
        "happened."
  ),
  CSlide(
      image: 'assets/images/startingCarouselSlider3.png',
      description: "Don't cry because it's over,\n"
          "smile because it \n"
          "happened."
  ),
  CSlide(
      image: 'assets/images/startingCarouselSlider2.png',
      description: "Don't cry because it's over,\n"
          "smile because it \n"
          "happened."
  ),

];
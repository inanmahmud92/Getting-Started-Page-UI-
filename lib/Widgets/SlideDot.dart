import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
    margin: const EdgeInsets.symmetric(horizontal: 10),
    height: isActive?12:8,
    width: isActive?12:8,
    decoration: BoxDecoration(
      color: isActive? Color(0xffE84801): Color(0xff707070),
      borderRadius: BorderRadius.all(Radius.circular(12))
    ),);
  }
}

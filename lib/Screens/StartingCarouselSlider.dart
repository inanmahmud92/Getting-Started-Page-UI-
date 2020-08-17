

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reshop_ui/Widgets/SlideDot.dart';
import 'package:reshop_ui/Widgets/slideItem.dart';
import 'package:reshop_ui/model/CarouselSlideModel.dart';

class CaroselSlider extends StatefulWidget {
  @override
  _CaroselSliderState createState() => _CaroselSliderState();
}

class _CaroselSliderState extends State<CaroselSlider> {
  int _currentPage = 0;
  final PageController _pageController= PageController(
    initialPage: 0
  );
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
        if(_currentPage<2){
          _currentPage++;
        }else{
          _currentPage=0;
        }
        _pageController.animateToPage(_currentPage,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn);
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }
  _onPageChanged(int index){
  setState(() {
    _currentPage=index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                      PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      itemCount: CSlideList.length,
                      onPageChanged: _onPageChanged,
                      itemBuilder: (context , index)=>SlideItems(index),
                    ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          for(int i=0;i<CSlideList.length;i++)
                            if(i==_currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    )
                  ],
                )
                  ]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(onPressed: (){},
                      padding: const EdgeInsets.all(15),
                      child: Text("Sign Up",style: TextStyle(color: Colors.white,
                        fontFamily:"Poppins", fontWeight: FontWeight.w700, fontSize: 17),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      color: Color(0xffE84801),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Have an account?",
                          style: TextStyle(
                            fontFamily:"Poppins",
                            color: Color(0xff707070),
                          fontSize: 18,
                        ),),
                        FlatButton(onPressed:(){}, child: Text("Login",
                          style: TextStyle(
                            fontFamily:"Poppins",
                            color: Color(0xffE84801),
                          fontSize: 18,
                        ),))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),

    );
  }
}

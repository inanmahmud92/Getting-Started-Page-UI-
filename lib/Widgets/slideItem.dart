import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reshop_ui/model/CarouselSlideModel.dart';

class SlideItems extends StatelessWidget {
  final int index;
  SlideItems(this.index);
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation==Orientation.portrait?
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 200,
          width: 250,
          decoration: BoxDecoration(

            image: DecorationImage(
              image: AssetImage(CSlideList[index].image),
              fit: BoxFit.cover, ),


          ),
        ),
        SizedBox(height: 40,),
        Row(
          children: [
            Expanded(flex:1,child: SizedBox(
            )),
            Expanded(
              flex: 3,
              child: Text(CSlideList[index].description,style: TextStyle(
                fontFamily:"Poppins",
                color: Color(0xff707070),
                fontSize: 18,
              ),),
            ),
          ],
        ),
        SizedBox(height: 20,),
      ],
    ):
    Row(
    children:<Widget> [
      Container(
        height: 150,
        width: 250,
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage(CSlideList[index].image),
            fit: BoxFit.cover, ),


        ),
      ),
      SizedBox(width: 20,),
      Row(
        children: [

          Text(CSlideList[index].description,style: TextStyle(
              fontFamily:"Poppins",
              color: Color(0xff707070),
              fontSize: 18,
            ),),

        ],
      ),
    ],
    ) ;
  }
}

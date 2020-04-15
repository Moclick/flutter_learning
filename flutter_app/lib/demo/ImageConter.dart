import 'package:flutter/material.dart';

/*
 * 圆角图片 
 */
class ImageConter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500 ,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(250),
        image: DecorationImage(
          image: NetworkImage(
            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1585476401&di=17f356881909386c4c1daf0507ddb219&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg"
            ),
        alignment: Alignment.centerLeft,
        fit: BoxFit.cover,
      ),
      )
    );
  }
}
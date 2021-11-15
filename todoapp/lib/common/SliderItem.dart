
// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:todoapp/common/common.dart';
import 'package:todoapp/models/category.dart';

class SliderItem extends StatefulWidget {
  final int tasksCount;
  final double screenWidth;
  final Category category;
  final double terminationPercentage;
  final Color indicatorColor;

  const SliderItem({Key? key ,
  required this.tasksCount,
  required this.screenWidth,
  required this. category,
   required this.terminationPercentage,
     required this.indicatorColor,
  }): super(key: key);
  @override
  _SliderItemState createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      width: widget.screenWidth *.5,
      decoration: BoxDecoration
      (color: primaryBackground,
     boxShadow: kElevationToShadow[4],
      borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children:[
             const SizedBox(height: 15,),
             Text(
              "${widget.tasksCount} tasks",
              style: TextStyle(
                fontFamily: regularFont,
                color: thirdFondColor.withOpacity(0.6),
                fontSize: 12,
              ),
             ),
           
               SizedBox(height: 10,),
            Text(
             widget.category.toString(),
              style: TextStyle(
                fontFamily: boldFont,
                fontSize: 16,
                color: globalWhite.withOpacity(0.8),
               
              ),
             ),
             SizedBox(height: 25,),
             LinearProgressIndicator(
               value: widget.terminationPercentage,
               backgroundColor:  Colors.white.withOpacity(.1),
               color:  widget.indicatorColor,
             )
           ]
         ),
   ),
    );
  }
}
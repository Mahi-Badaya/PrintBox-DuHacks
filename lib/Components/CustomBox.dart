import 'package:flutter/material.dart';
import 'package:printbox/Screens/PersonalProjects.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({Key? key, required this.height, required this.width, required this.colour, required this.image, required this.title, required this.backgroundColor,}) : super(key: key);

  final double height;
  final double width;
  final Color colour;
  final Color backgroundColor;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalProjects()));},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
        height: height*0.14,
        width: width*0.4,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image),
                Icon(Icons.more_vert,color: colour,),
              ],
            ),
            SizedBox(height: height*0.02,),
            Text(title,style: TextStyle(color: colour,fontStyle: FontStyle.italic,fontSize: 16),),
            Text('Novemeber 22,2022',style: TextStyle(color: colour,fontStyle: FontStyle.italic,fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:printbox/Components/grids.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(height*0.1),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xfffbfbfb),
          title: Text('HOME',style: TextStyle(fontStyle: FontStyle.italic,color: Color(0xff22215b)),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_rounded,color: Color(0xff22215b))),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: height*0.27,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/profile.png'),
                  SizedBox(height: height*0.01,),
                  Text('John Doe Chacha',style: TextStyle(color: Color(0xff22215b),fontSize: 20,fontStyle: FontStyle.italic),),
                  SizedBox(height: height*0.01,),
                  Text('Lets Get your Printout',style: TextStyle(color: Color(0xff22215b),fontSize: 15),),
                  SizedBox(height: height*0.01,),
                  Text('Select files from destination you want to upload and leave the rest on us.',textAlign:TextAlign.center,style: TextStyle(color: Color(0xff22215b).withOpacity(0.6),fontSize: 14),),
                ],
              ),
            ),
            SizedBox(height: height*0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('My Folders',style: TextStyle(color: Color(0xff22215b),fontSize: 16,fontStyle: FontStyle.italic)),
                Spacer(),
                Icon(Icons.add,color: Color(0xff22215b),),
                SizedBox(width: width*0.05,),
                Icon(Icons.sort_rounded,color: Color(0xff22215b),),
                SizedBox(width: width*0.05,),
                Icon(Icons.arrow_forward_ios_rounded,color: Color(0xff22215b),),
              ],
            ),
            SizedBox(height: height*0.02,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBox(height: height, width: width, colour: Colors.blue, image: 'assets/images/folder-blue.png', title: 'Minor Project',),
                    CustomBox(height: height, width: width, colour: Colors.yellow, image: 'assets/images/folder-yellow.png', title: 'Buisness Models',),
                  ],
                ),
                SizedBox(height: height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBox(height: height, width: width, colour: Colors.red, image: 'assets/images/folder-red.png', title: 'Personal Docs',),
                    CustomBox(height: height, width: width, colour: Colors.greenAccent, image: 'assets/images/folder-green.png', title: 'Posters',),
                  ],
                ),
              ],
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recents Uploads',style: TextStyle(color: Color(0xff22215b),fontSize: 16,fontStyle: FontStyle.italic)),
                Icon(Icons.sort_rounded,color: Color(0xff22215b),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  const CustomBox({Key? key, required this.height, required this.width, required this.colour, required this.image, required this.title,}) : super(key: key);

  final double height;
  final double width;
  final Color colour;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
      height: height*0.14,
      width: width*0.4,
      decoration: BoxDecoration(
        color: colour.withOpacity(0.2),
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
    );
  }
}

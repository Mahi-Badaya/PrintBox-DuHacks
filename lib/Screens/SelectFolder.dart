import 'package:flutter/material.dart';

import '../Components/CustomBox.dart';
import '../Components/search.dart';

class SelectFolder extends StatelessWidget {
  const SelectFolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.09),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Color(0xfffbfbfb),
          title: Text('Select Folder', style: TextStyle(fontStyle: FontStyle.italic, color: Color(0xff22215b),fontSize: 25),),
          actions: [
            TextButton(onPressed: () {  },
                child: Text('::',style: TextStyle(color: Color(0xff22215b),fontSize: 40,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Search(),
            SizedBox(height: height*0.03,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Recent',style: TextStyle(color: Color(0xff22215b),fontSize: 16,fontStyle: FontStyle.italic)),
                  Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xff22215b),size: 30,),
                  Spacer(),
                  Icon(Icons.sort_rounded,color: Color(0xff22215b),),
                  SizedBox(width: width*0.05,),
                  Icon(Icons.calendar_view_month_outlined,color: Color(0xff22215b),),
                ],
              ),
            ),
            SizedBox(height: height*0.04,),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: height*0.02),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomBox(height: height, width: width, colour: Color(0xff415eb6), image: 'assets/images/folder-blue.png', title: 'Minor Project', backgroundColor: Color((0xffeef7fe)),),
                            CustomBox(height: height, width: width, colour: Color(0xffffb110), image: 'assets/images/folder-yellow.png', title: 'Buisness Models', backgroundColor: Color(0xfffffbec),),
                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomBox(height: height, width: width, colour: Color(0xffac4040), image: 'assets/images/folder-red.png', title: 'Personal Docs', backgroundColor: Color(0xfffeeeee),),
                            CustomBox(height: height, width: width, colour: Color(0xff23b0b0), image: 'assets/images/folder-green.png', title: 'Posters', backgroundColor: Color(0xfff0ffff),),
                          ],
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

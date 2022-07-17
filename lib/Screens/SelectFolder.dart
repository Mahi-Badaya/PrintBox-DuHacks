import 'package:flutter/material.dart';

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
      body: Column(
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
        ],
      ),
    );
  }
}

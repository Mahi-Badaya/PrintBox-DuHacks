import 'package:flutter/material.dart';
import 'package:printbox/Components/search.dart';

class PersonalProjects extends StatelessWidget {
  const PersonalProjects({Key? key}) : super(key: key);

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
          title: Text('Personal Projects', style: TextStyle(fontStyle: FontStyle.italic, color: Color(0xff22215b),fontSize: 25),),
          actions: [
            TextButton(onPressed: () {  },
              child: Text('::',style: TextStyle(color: Color(0xff22215b),fontSize: 40,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Search(),
        ],
      ),
    );
  }
}

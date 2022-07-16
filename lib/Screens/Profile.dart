import 'package:flutter/material.dart';

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
                color: Color(0xffE8E8F5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/profile.png'),
                  SizedBox(height: height*0.01,),
                  Text('John Doe',style: TextStyle(color: Color(0xff22215b),fontSize: 20,fontStyle: FontStyle.italic),),
                  SizedBox(height: height*0.01,),
                  Text('Lets Get your Printout',style: TextStyle(color: Color(0xff22215b),fontSize: 15),),
                  SizedBox(height: height*0.01,),
                  Text('Select files from destination you want to upload and leave the rest on us.',textAlign:TextAlign.center,style: TextStyle(color: Color(0xff22215b).withOpacity(0.6),fontSize: 14),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

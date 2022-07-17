import 'package:flutter/material.dart';

import '../Components/CustomBox.dart';
import 'PersonalProjects.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(height*0.09),
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
              height: height*0.23,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(1, 3),
                  ),
                ],
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
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recents Uploads',style: TextStyle(color: Color(0xff22215b),fontSize: 16,fontStyle: FontStyle.italic)),
                Icon(Icons.sort_rounded,color: Color(0xff22215b),),
              ],
            ),
            SizedBox(height: height*0.02,),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/icons/docx.png'),
                      title: Text('Projects.docx',style: TextStyle(color: Color(0xff22215b),fontStyle: FontStyle.italic,fontSize: 16),),
                      subtitle: Text('Novemeber 22,2022',style: TextStyle(color: Color(0xff22215b),fontStyle: FontStyle.italic,fontSize: 12)),
                      trailing: Text('200 kb',style: TextStyle(color: Color(0xff22215b),fontStyle: FontStyle.italic,fontSize: 11)),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {showDialog(context: context, builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 16,
            content: Wrap(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Select File Destination',style: TextStyle(color: Color(0xff22215b),fontSize: 19),),
                      SizedBox(height: 20,),
                      TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalProjects()));  },
                       child: Text('Select from my folders',style: TextStyle(color: Color(0xff22215b),fontSize: 17) )),
                      SizedBox(height: 10,),
                      TextButton(onPressed: () {  },
                       child: Text('Select from device',style: TextStyle(color: Color(0xff22215b),fontSize: 17) )),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
        },
        backgroundColor: Color(0xff22215b),
        child: const Icon(Icons.print_outlined),
      ),
    );
  }
}


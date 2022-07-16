import 'package:flutter/material.dart';
import 'package:printbox/Screens/Login.dart';
import 'package:printbox/Screens/register.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/asset.png', fit: BoxFit.cover, width: width,height: height*0.4,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Welcome to ',style: TextStyle(fontSize: 20,color: Color(0xff22215b),fontStyle: FontStyle.italic),),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('PrintBox',style: TextStyle(fontSize: 38,color: Color(0xff22215b),fontStyle: FontStyle.italic),),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
            child: Text('Best Platform to store your files\nand get it print on the Go..\nAnytime Anywhere\nJoin For Free.',
              style: TextStyle(fontSize: 14,color: Color(0xff7b7f9e),fontStyle: FontStyle.italic),),
          ),
          Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())); },
              style: ElevatedButton.styleFrom(
                minimumSize:  Size(width*0.9, height*0.07),
                maximumSize: Size (width*0.9, height*0.1),
                elevation: 0,
                primary:  Color(0xff567df4),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign in ', style: TextStyle(fontSize: 17,color: Colors.white,fontStyle: FontStyle.italic)),
                  Icon(Icons.arrow_forward_rounded, color: Colors.white,),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.06,),
          Center(child: Text('Use other login')),
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/icons/google-plane.png'),
              Image.asset('assets/icons/facebook-plane.png'),
            ],
          ),
          SizedBox(height: height*0.06,),
          Center(child: TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));},
              child: Text('Create an account',style: TextStyle(fontSize: 16,color: Color(0xff1b1d28)),))),
          SizedBox(height: height*0.04,),
        ],
      )
    );
  }
}

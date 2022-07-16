import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:printbox/Screens/Login.dart';

import '../Components/TextSpace.dart';
import 'Profile.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height*0.08,),
            Center(child: Text('Register',style: TextStyle(fontSize: 24,color: Color(0xff18172B),fontWeight: FontWeight.bold),)),
            SizedBox(height: height*0.02,),
            Center(child: Text('Create account',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0)),)),
            SizedBox(height: height*0.05,),
            //
            Text('Name',style: TextStyle(fontSize: 16,color: Color(0xff18172b)),),
            SizedBox(height: height*0.02,),
            TextSpace(hintTag: 'John Doe', textFieldHeight: height*0.02,),
            SizedBox(height: height*0.02,),
            //
            Text('Email',style: TextStyle(fontSize: 16,color: Color(0xff18172b)),),
            SizedBox(height: height*0.02,),
            TextSpace(hintTag: 'john@doe.com', textFieldHeight: height*0.02,),
            SizedBox(height: height*0.02,),
            //
            Text('Password',style: TextStyle(fontSize: 16,color: Color(0xff18172b)),),
            SizedBox(height: height*0.02,),
            TextSpace(hintTag: 'password', textFieldHeight: height*0.02,),
            SizedBox(height: height*0.02,),
            //
            Text('Confirm Password',style: TextStyle(fontSize: 16,color: Color(0xff18172b)),),
            SizedBox(height: height*0.02,),
            TextSpace(hintTag: 'Confirm password', textFieldHeight: height*0.02,),
            SizedBox(height: height*0.03,),
            //
            Center(
              child: ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile())); },
                style: ElevatedButton.styleFrom(
                  minimumSize:  Size(width*0.9, height*0.07),
                  maximumSize: Size (width*0.9, height*0.1),
                  elevation: 0,
                  primary:  Color(0xff567df4),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                child: Text('Sign in ', style: TextStyle(fontSize: 17,color: Colors.white)),
              ),
            ),
            SizedBox(height: height*0.04,),
            Center(
              child: RichText(
                text: TextSpan(text: 'Already a member? ', style: TextStyle(fontSize: height*0.019,color:Color(0xff6e80b0)),//fontSize: 17
                    children: <TextSpan>[
                      TextSpan(text: '  Login', style: TextStyle(fontSize: height*0.021, fontWeight: FontWeight.bold,color: Color(0xff6f69f2)),//fontSize: 18
                        recognizer: new TapGestureRecognizer()..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())),
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height: height*0.07,),
          ],
        ),
      ),
    );
  }
}

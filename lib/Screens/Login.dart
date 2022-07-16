import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:printbox/Components/TextSpace.dart';
import 'package:printbox/Screens/Profile.dart';
import 'package:printbox/Screens/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
            Center(child: Text('Login',style: TextStyle(fontSize: 24,color: Color(0xff18172B),fontWeight: FontWeight.bold),)),
            SizedBox(height: height*0.02,),
            Center(child: Text('Access account',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0)),)),
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height*0.08,
                  width: width*0.4,
                  decoration: BoxDecoration(
                    color: Color(0xffE8E8F5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/icons/google.png'),
                ),
                Container(
                  height: height*0.08,
                  width: width*0.4,
                  decoration: BoxDecoration(
                    color: Color(0xffE8E8F5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/icons/facebook.png'),
                ),
              ],
            ),
            SizedBox(height: height*0.03,),
            Center(child: Text('or Login with Email',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0)),)),
            SizedBox(height: height*0.03,),
            Text('Email',style: TextStyle(fontSize: 16,color: Color(0xff18172b)),),
            SizedBox(height: height*0.02,),
            TextSpace(hintTag: 'john@doe.com', textFieldHeight: height*0.025,),
            SizedBox(height: height*0.03,),
            Text('Password',style: TextStyle(fontSize: 16,color: Color(0xff18172b)),),
            SizedBox(height: height*0.02,),
            TextSpace(hintTag: 'password', textFieldHeight: height*0.025,),
            Spacer(),
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
                text: TextSpan(text: 'Don’t have an account? ', style: TextStyle(fontSize: height*0.019,color:Color(0xff6e80b0)),//fontSize: 17
                    children: <TextSpan>[
                      TextSpan(text: '  Register', style: TextStyle(fontSize: height*0.021, fontWeight: FontWeight.bold,color: Color(0xff6f69f2)),//fontSize: 18
                        recognizer: new TapGestureRecognizer()..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Register())),
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

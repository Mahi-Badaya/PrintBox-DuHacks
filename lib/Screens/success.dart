import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color:  Color(0xff18172b),), onPressed: () { Navigator.pop(context); },),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height*0.2,),
            Image.asset('assets/images/success.png'),
            SizedBox(height: height*0.02,),
            Text('Success',style: TextStyle(color: Color(0xff22215b),fontSize: 25,fontWeight: FontWeight.bold),),
            Text('Your files are all set for printing!',style: TextStyle(color: Color(0xff22215b).withOpacity(0.6),fontSize: 18,fontStyle: FontStyle.italic),),
            SizedBox(height: height*0.3,),
            Center(
              child: ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Success())); },
                style: ElevatedButton.styleFrom(
                  minimumSize:  Size(width*0.9, height*0.07),
                  maximumSize: Size (width*0.9, height*0.1),
                  elevation: 0,
                  primary:  Color(0xff32b768),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                child: Text('Check order Status', style: TextStyle(fontSize: 17,color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

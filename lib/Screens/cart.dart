import 'package:flutter/material.dart';
import 'package:printbox/Components/TextSpace.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

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
        title: Text('Cart',style: TextStyle(color: Color(0xff18172b),fontWeight: FontWeight.bold),),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color:  Color(0xff18172b),), onPressed: () { Navigator.pop(context); },),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              height: height*0.18,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xff567df4),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Kumawat Madarchod',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('Printing Press Ltd.',style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: height*0.1,),
            TextSpace(hintTag: 'Promo Code', textFieldHeight: height*0.025),
            SizedBox(height: height*0.1,),
            const Divider(
              thickness: 0.6,
              color: Color(0xffafafaf),
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item Total',style: TextStyle(color: Color(0xff6e80b0),fontSize: 16),),
                Text('₹20.49',style: TextStyle(color: Color(0xff6e80b0),fontSize: 16),)
              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Discount',style: TextStyle(color: Color(0xff6e80b0),fontSize: 16),),
                Text('-  ₹10',style: TextStyle(color: Color(0xff6e80b0),fontSize: 16),)
              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Convience charge',style: TextStyle(color: Color(0xff6e80b0),fontSize: 16),),
                Text('+    ₹2',style: TextStyle(color: Color(0xff6e80b0),fontSize: 16),)
              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',style: TextStyle(color: Color(0xff18172b),fontSize: 16,fontWeight: FontWeight.bold),),
                Text('₹12.49',style: TextStyle(color: Color(0xff18172b),fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: (){ },
                style: ElevatedButton.styleFrom(
                  minimumSize:  Size(width*0.9, height*0.07),
                  maximumSize: Size (width*0.9, height*0.1),
                  elevation: 0,
                  primary:  Color(0xff567df4),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                child: Text('Continue ', style: TextStyle(fontSize: 17,color: Colors.white)),
              ),
            ),
            SizedBox(height: height*0.03,),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ShopkeeperSelection extends StatelessWidget {
  const ShopkeeperSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/map.png',width: width,fit: BoxFit.cover,)),
          Container(
            padding: EdgeInsets.all(30),
            height: height*0.28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Distance',style: TextStyle(color: Color(0xff6e80b0),fontSize: 16),),
                SizedBox(height: height*0.01,),
                Text('🕒 20 min',style: TextStyle(color: Color(0xff18172b),fontSize: 20),),
                SizedBox(height: height*0.02,),
                Row(
                  children: [
                    Image.asset('assets/images/profile.png',width: 60,height: 60,fit: BoxFit.cover,),
                    SizedBox(width: width*0.02,),
                    Text('Printing Press Ltd',style: TextStyle(color: Color(0xff18172b),fontSize: 20),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context=>daf())));},
        backgroundColor: Color(0xff22215b),
        child: const Icon(Icons.print_outlined),
      ),
    );
  }
}

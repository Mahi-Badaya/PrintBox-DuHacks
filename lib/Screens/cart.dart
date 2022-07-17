import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Cart',style: TextStyle(color: Color(0xff18172b)),),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () { Navigator.pop(context); },),
      ),
    );
  }
}

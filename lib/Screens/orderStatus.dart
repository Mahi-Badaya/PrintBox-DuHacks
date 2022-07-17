import 'package:flutter/material.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xfffbfbfb),
        title: Text('Order Status', style: TextStyle(fontStyle: FontStyle.italic, color: Color(0xff22215b),fontSize: 25),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Status',style: TextStyle(color: Color(0xff22215b),fontSize: 16,fontStyle: FontStyle.italic),)
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Image.asset(images[index]),
                          title: Text(names[index],style: TextStyle(color: Color(0xff22215b),fontStyle: FontStyle.italic,fontSize: 16),),
                          subtitle: Text('July 17,2022',style: TextStyle(color: Color(0xff22215b),fontStyle: FontStyle.italic,fontSize: 12)),
                          trailing: Text(trailing[index],style: TextStyle(color: color[index],fontStyle: FontStyle.italic,fontSize: 11)),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> images = ["assets/icons/docx.png", "assets/icons/ppt.png", "assets/icons/excel.png","assets/icons/pdf.png"];
List<String> trailing = ['Done', 'Done', 'Cancelled','Pending'];
List<Color> color = [Color(0xff1FCC3A), Color(0xff1FCC3A), Color(0xffee1a0d),Color(0xff4945f4)];
List<String> names = ['Lab.docx', 'Projects.ppt', 'Projects.xls','Projects.pdf'];
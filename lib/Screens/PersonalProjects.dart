import 'package:flutter/material.dart';
import 'package:printbox/Components/model.dart';
import 'package:printbox/Components/search.dart';
import 'package:printbox/Screens/shopkeeperSelection.dart';

class PersonalProjects extends StatefulWidget {
  const PersonalProjects({Key? key}) : super(key: key);

  @override
  State<PersonalProjects> createState() => _PersonalProjectsState();
}

class _PersonalProjectsState extends State<PersonalProjects> {

  List<FileDetails> files =[
    FileDetails( 'assets/icons/docx.png', 'Lab.docx',false),
    FileDetails( 'assets/icons/ppt.png','Projects.ppt', false),
    FileDetails('assets/icons/excel.png', 'Projects.xls', false),
    FileDetails( 'assets/icons/pdf.png','Projects.pdf', false),
  ];

  Widget FileItem(String names, String images, bool isSelected, int index){
    return ListTile(
      leading: Image.asset(images),
      title: Text(names,style: TextStyle(color: Color(0xff22215b),fontStyle: FontStyle.italic,fontSize: 16),),
      subtitle: Text('July 17,2022',style: TextStyle(color: Color(0xff22215b),fontStyle: FontStyle.italic,fontSize: 12)),
      trailing: isSelected ? Icon(Icons.check_circle , color: Colors.green[700],) : Icon(Icons.check_circle_outline, color: Colors.grey,),
      onTap: (){
        setState ((){
          files[index].isSelected = !files[index].isSelected;
          if( files[index]. isSelected == true){
            selectedFiles.add(FileDetails(names, images, true));
          }else if(files[index]. isSelected == false){
            selectedFiles.removeWhere ((element) => element.names == files[index].names);
          }
        });
      },
    );
  }

  List <FileDetails> selectedFiles = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.09),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Color(0xfffbfbfb),
          title: Text('Personal Docs', style: TextStyle(fontStyle: FontStyle.italic, color: Color(0xff22215b),fontSize: 25),),
          actions: [
            TextButton(onPressed: () {  },
              child: Text('::',style: TextStyle(color:  Color(0xff22215b),fontSize: 40,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
      body: Column(
        children: [
          Search(),
          SizedBox(height: height*0.03,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Recent',style: TextStyle(color: Color(0xff22215b),fontSize: 16,fontStyle: FontStyle.italic)),
                Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xff22215b),size: 30,),
                Spacer(),
                Icon(Icons.sort_rounded,color: Color(0xff22215b),),
                SizedBox(width: width*0.05,),
                Icon(Icons.calendar_view_month_outlined,color: Color(0xff22215b),),
              ],
            ),
          ),
          SizedBox(height: height*0.04,),
          Expanded(
            child: ListView.builder(
                itemCount: files.length,
                itemBuilder: (context, index) {
                  return FileItem(files[index].images,files[index].names,files[index].isSelected, index);
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopkeeperSelection())); },
        backgroundColor: Color(0xff22215b),
        child: const Icon(Icons.print_outlined),
      ),
    );
  }
}




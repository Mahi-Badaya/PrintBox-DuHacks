import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      child: const TextField(
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          contentPadding:  EdgeInsets.all(20),
          fillColor: Color(0xffffffff),
          border:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14.0)),
            borderSide: BorderSide(width: 0, style: BorderStyle.solid,color: Color(0xffeef2fe)),
          ),
          hintText: 'Search Folder',
          prefixIcon: Icon(Icons.search, size: 22, color: Color(0xff22215b),),
          hintStyle: TextStyle(color: Color(0xff22215b), fontSize: 16,fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}

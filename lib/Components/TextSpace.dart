import 'package:flutter/material.dart';

class TextSpace extends StatelessWidget {
  const TextSpace({Key? key, required this.hintTag, required this.textFieldHeight}) : super(key: key);

  final String hintTag;
  final double textFieldHeight;

  @override
  Widget build(BuildContext context) {
    return  TextField (
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: Color(0xfff8f8fa),
        contentPadding:  EdgeInsets.all(textFieldHeight),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: hintTag,
        hintStyle: TextStyle(color: Color(0xff7d7d7d), fontSize: MediaQuery.of(context).size.height*0.017),//fontSize: 14
      ),
    );
  }
}

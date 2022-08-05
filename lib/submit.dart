import 'package:flutter/material.dart';

class Submit extends StatefulWidget{
  const Submit({Key? key}) : super(key: key);

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
          children: [
      Container(
      padding: EdgeInsets.only(left: 35,top: 140),
      child: Text("Thanks for Registering yourself",style: TextStyle(color: Colors.blue.shade800, fontSize: 53, fontWeight:FontWeight.bold, fontStyle: FontStyle.italic),),
    ),
    ]
      ),
    );

  }
}
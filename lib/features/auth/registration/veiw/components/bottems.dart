import 'package:flutter/material.dart';

class bottomsNav extends StatelessWidget {
  const bottomsNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       FilledButton(
        style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.brown)),
        onPressed: (){},
         child: Text("confirm")),

          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("have an account ? "),
          Text( 
            "login",
          style: TextStyle(color: Colors.brown,
          decorationStyle:TextDecorationStyle.solid,
          decoration: TextDecoration.underline,
          decorationThickness: 5
          ) 
          
          ),
          

         ],)
      ],
    );
  }
}
import 'package:flutter/material.dart';

class loginButt extends StatelessWidget {
  const loginButt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.brown)),
            onPressed: () {},
            child: Text("GO")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("create an account "),
            Text("forget passwprd ",
                style: TextStyle(
                    color: Colors.brown,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline,
                    decorationThickness: 5)),
          ],
        )
      ],
    );
  }
}

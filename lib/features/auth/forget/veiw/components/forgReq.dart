import 'package:app1/core/utilits/validation.dart';
import 'package:flutter/material.dart';

class forgreq extends StatelessWidget {
  const forgreq({super.key});
  
  get deco => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Text
        const Text(
          " SignUp ",
          style: TextStyle(decorationThickness: 10, color: Colors.brown),
        ),

        /// Image

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage('lib/myImages/dop.jpg'),
                  height: 100,
                  width: 100,
                ))
          ],
        ), ////////////text field  --->Email
        TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.name,
            validator: myValid().nameValid,
            decoration: deco.copyWith(

                /// to change some changes
                labelText: 'Email',
                hintText: 'XXXXX@gmail.com',
                prefixIcon: const Icon(Icons.mail))),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

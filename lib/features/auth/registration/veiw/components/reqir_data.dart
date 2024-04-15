import 'package:app1/core/utilits/validation.dart';
import 'package:flutter/material.dart';

class reqirdata extends StatelessWidget {
  // const reqirdata({super.key});

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
        ),

        // Text field 1 --> User name
        TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.name,
            validator: myValid().nameValid,
            decoration: deco.copyWith(labelText: 'user name')),
        const SizedBox(
          height: 50,
        ),

        /// Text field 2 -->password
        TextFormField(
            maxLength: 12,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.name,
            validator: myValid().nameValid,
            obscureText: true,
            obscuringCharacter: "#",
            decoration: deco.copyWith(

                /// to change some changes
                labelText: 'User password',
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.remove_red_eye))),
        const SizedBox(
          height: 50,
        ),

        ////////////text field 3 --->Email
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

  ///inputDecoration  object *-*
  InputDecoration deco = InputDecoration(
      border: OutlineInputBorder(

          ///  normal  فى حاله
          borderSide: const BorderSide(color: Colors.brown, width: 2),
          borderRadius: BorderRadius.circular(35)),
/////////////////////////////////////////////////
      ///  ///  focus  فى حاله
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 185, 173, 138), width: 2),
          borderRadius: BorderRadius.circular(10)),
      /////////////////////////////////////////////
      ///     ///  Error  فى حاله
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10)));
}

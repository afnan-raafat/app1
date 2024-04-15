import 'package:app1/features/auth/registration/veiw/components/bottems.dart';
import 'package:app1/features/auth/registration/veiw/components/reqir_data.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class regispage extends StatelessWidget {
  const regispage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body: reqirdata(),
      bottomNavigationBar:SizedBox(child:bottomsNav(),height: 100,),
      ),
    );
  }
}
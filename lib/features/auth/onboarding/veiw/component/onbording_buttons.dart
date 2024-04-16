import 'package:app1/features/auth/onboarding/controller/cubit/onbord_controller_cubit.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  OnboardingButton({super.key, required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllerCubit>.value(
      value: controller,
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          OnboardingControllerCubit controller =
              context.read<OnboardingControllerCubit>();
          return SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                /// المسافه بينهم
                children: [
                  TextButton(
                      onPressed: () {
                        controller.onCallSkip(context);
                      },
                      child: Text('Skip')),
                  TextButton(
                      onPressed: controller.onChangeToNext,
                      child: Text('Next')),
                ],
              ));
        },
      ),
    );
  }
}

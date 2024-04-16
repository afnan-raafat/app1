
import 'package:app1/features/auth/onboarding/controller/cubit/onbord_controller_cubit.dart';
import 'package:app1/features/auth/onboarding/veiw/component/onbording_body.dart';
import 'package:app1/features/auth/onboarding/veiw/component/onbording_buttons.dart';
import 'package:flutter/material.dart';

class OnbordingPage extends StatelessWidget {
  const OnbordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<OnboardingControllerCubit>(
        create: (context) => OnboardingControllerCubit(),
        child:
            BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
          builder: (context, state) {
            OnboardingControllerCubit controller =
                context.read<OnboardingControllerCubit>();
            return Scaffold(
              body: onbordingPage(
                controller: controller,
              ),
              bottomNavigationBar: OnboardingButton(
                controller: controller,
              ),
            );
          },
        ),
      ),
    );
  }
}

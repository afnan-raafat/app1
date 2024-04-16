import 'package:app1/features/auth/onboarding/controller/cubit/onbord_controller_cubit.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/widgets.dart';
class onbordingPage extends StatelessWidget {
  const onbordingPage(
      {super.key, required OnboardingControllerCubit controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text("Welcome to our app "),
            Expanded(
              child: BlocProvider<OnboardingControllerCubit>(
                create: (context) => OnboardingControllerCubit(),
                child: BlocBuilder<OnboardingControllerCubit,
                    OnboardingControllerState>(
                  builder: (context, state) {
                    OnboardingControllerCubit controller =
                        context.read<OnboardingControllerCubit>();

                    /// To return List
                    return PageView(
                      controller: controller.pageController,
                      //// Images
                      children: List.generate(controller.data.length, (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(controller.data[index].images),
                            Text(
                              /// Titles
                              ///
                              controller.data[index].title,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: controller.data[index].color),

                              /// هياخد من الالوان اللى حطيته
                            ),
                            Text(
                              /// sub Titles
                              controller.data[index].subtitle,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,

                                /// هيخلى الوان ال sub  كلها رمادى
                              ),
                            )
                          ],
                        );
                      }),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

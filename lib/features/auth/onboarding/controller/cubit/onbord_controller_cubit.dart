import 'package:app1/features/auth/onboarding/model/onbordmodel.dart';
import 'package:app1/features/auth/registration/veiw/page/regis_page.dart';
import 'package:flutter/material.dart';

part 'onbord_controller_event.dart';
part 'onbord_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());
  // الشغل العفش دا مش نافع
  /*/
  List images = [
    'assets/images/7fbdb5aa5eba053f8a2317eb36a9b43a.jpg',
    'assets/images/d1.jpg',
    'assets/images/dop.jpg',
  ];
  List titles = [
    'first',
    'second',
    'third',
  ];
    List subtitle = [
    'first screen',
    'second screen',
    'third screen',
  ];
  List colors = [
    Colors.green,
     Colors.brown,
      Colors.red,
  ];
*/
  PageController pageController = PageController();

  /// object
//// methods بتاعتى بقى

  void onChangeToNext() {
    pageController.nextPage(
        duration: Duration(seconds: 2), curve: Curves.bounceIn);

    /// يعنى هينقل من صفحه للتانيه ف قد اى ؟
  }

  void onCallSkip(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return regispage();
    }));
  }

  /// الشغل الصح بقى
  List data = [
    /// كل الحكايه هباصي للكونستركتور ال attributes اللى عملتها
    onboardingModel(
        colors: const Color.fromRGBO(76, 175, 80, 1),
        images: 'assets/images/7fbdb5aa5eba053f8a2317eb36a9b43a.jpg',
        subtitle: 'First screen',
        titles: 'first'),
    onboardingModel(
        colors: const Color.fromARGB(122, 52, 22, 22),
        images: 'assets/images/d1.jpg',
        subtitle: 'second screen',
        titles: 'second'),

    onboardingModel(
        colors: Color.fromARGB(255, 226, 137, 235),
        images: 'assets/images/dop.jpg',
        subtitle: 'third screen',
        titles: 'third'),
  ];
}

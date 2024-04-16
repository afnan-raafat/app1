import 'package:app1/features/auth/onboarding/veiw/page/onbord_page.dart';
import 'package:app1/features/auth/registration/veiw/page/regis_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance(); // يعتبر اوبجيكت منها
  bool onbord = sharedPreferences.getBool('onboarding')??false;

  MaterialApp materialApp = MaterialApp(
    home: onbord? const onbordPage():const onbordPage(),
  );
  runApp(materialApp);
}

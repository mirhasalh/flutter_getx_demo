import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/home_binding.dart';
import 'modules/home_page.dart';
import 'routes/app_pages.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Demo',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialBinding: HomeBinding(),
      home: const HomePage(),
      getPages: AppPages.pages,
    );
  }
}

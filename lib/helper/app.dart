import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_manage/helper/routes.dart';

import 'colors.dart';


Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await FlutterDownloader.initialize();

  //Register the licence of font
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // await Firebase.initializeApp();
  // await Hive.initFlutter();
  // await Hive.openBox("authBox");
  // await Hive.openBox(settingsBoxKey);
  runApp(MyApp());
}

class GlobalScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MaterialApp(
        theme: Theme.of(context).copyWith(
            textTheme: Theme.of(context).textTheme,
            scaffoldBackgroundColor: AppColors.pageBackgroundColor,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: AppColors.primaryColor,
                  background: AppColors.backgroundColor,
                )),
        builder: (context, widget) {
          return ScrollConfiguration(
              behavior: GlobalScrollBehavior(), child: widget!);
        },
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.login,
        onGenerateRoute: Routes.onGenerateRouted,
      );
    });
  }
}

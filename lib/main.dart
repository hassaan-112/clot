import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../res/colors/appColors.dart';
import '../../res/localization/localization.dart';
import '../../res/routes/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) =>
            GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                fontFamily: "Gabarito",
                brightness: Brightness.light,
                primaryColor: AppColors.primary,
                scaffoldBackgroundColor: AppColors.white,
                textTheme: TextTheme(
                  titleLarge: TextStyle(fontFamily: 'Sniglet', fontSize: 48.sp, fontWeight: FontWeight.w500, color: Colors.black),

                  displayLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600, color: AppColors.black),
                  displayMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: AppColors.secondaryBlack),
                  displaySmall: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColors.black),
                  headlineLarge: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.black),
                  headlineMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.black),
                  bodyLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal, color: Colors.black),
                  bodyMedium: TextStyle(fontSize: 14.sp, color: Colors.black),
                  bodySmall: TextStyle(fontSize: 12.sp, color: Colors.black,fontWeight: FontWeight.w700,),
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  titleTextStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              darkTheme: ThemeData(
                fontFamily: "Gabarito",
                brightness: Brightness.dark,
                primarySwatch: Colors.blue,
                primaryColor: Colors.blue,
                scaffoldBackgroundColor: Colors.black,
                textTheme: TextTheme(
                  displayLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.white),
                  displayMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.normal, color: Colors.white),
                  displaySmall: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal, color: Colors.white),
                  headlineLarge: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.white),
                  headlineMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),
                  bodyLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal, color: Colors.white),
                  bodyMedium: TextStyle(fontSize: 14.sp, color: Colors.white),
                  bodySmall: TextStyle(fontSize: 12.sp, color: Colors.white,fontWeight: FontWeight.w700,),
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.grey[900],
                  foregroundColor: Colors.white,
                  titleTextStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              getPages: AppRoutes.appRoutes(),
              themeMode: ThemeMode.light,
              translations: Languages(),
              locale: Locale("en","US"),
              fallbackLocale: Locale("en","US"),
              // initialRoute: "/homeScreen",
            )
    );
  }
}
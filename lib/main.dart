import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:produck_quantity/product_details.dart';
import 'package:produck_quantity/quentity_count.dart';


void main(){
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(375, 812),
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Coundown(),
      ),
    );
  }
}

import 'package:artiket/common/routers/pages.dart';
import 'package:artiket/common/style/style.dart';
import 'package:artiket/common/utils/utils.dart';
import 'package:artiket/global.dart';
import 'package:artiket/pages/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

Future<void> main() async {
  await Global.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),      
      builder: (BuildContext context, Widget? widget) => RefreshConfiguration(
        headerBuilder: () => ClassicHeader(),
        footerBuilder: () => ClassicFooter(),
        hideFooterWhenNotFull: true,
        headerTriggerDistance: 80,
        maxOverScrollExtent: 100,
        footerTriggerDistance: 150,
        child: GetMaterialApp(
          title: 'Artiket',
          theme: AppTheme.light,
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          //home: const SplashPage(),
          builder: EasyLoading.init(),
          navigatorObservers: [AppPages.observer],
          enableLog: true,
          logWriterCallback: Logger.write,
        ),
      ),
    );
  }
}

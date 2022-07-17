import 'package:artiket/pages/favorite/index.dart';
import 'package:artiket/pages/feed/index.dart';
import 'package:artiket/pages/home/index.dart';
import 'package:artiket/pages/profile/index.dart';
import 'package:artiket/pages/search/index.dart';
import 'package:get/get.dart';

import 'controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<FeedController>(() => FeedController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}

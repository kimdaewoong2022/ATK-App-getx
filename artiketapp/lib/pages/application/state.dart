import 'package:get/get.dart';

class ApplicationState {
  // 현재 탭 페이지 번호
  final _page = 0.obs;
  set page(value) => this._page.value = value;
  get page => this._page.value;
}

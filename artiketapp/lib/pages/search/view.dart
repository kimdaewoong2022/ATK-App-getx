import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({Key? key}) : super(key: key);

  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("search")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

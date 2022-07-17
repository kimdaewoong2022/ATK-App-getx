import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class FeedPage extends GetView<FeedController> {
  const FeedPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FeedController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("feed")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

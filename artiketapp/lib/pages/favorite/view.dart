import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);

  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("favorite")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  Widget _buildView() {
    return const ProfileWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (_) {
        return Scaffold(
          //appBar: AppBar(title: const Text("profile")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

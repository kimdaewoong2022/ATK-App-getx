import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class EmailPasswordPage extends GetView<EmailPasswordController> {
  const EmailPasswordPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("EmailPasswordPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmailPasswordController>(
      init: EmailPasswordController(),
      id: "email_password",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("email_password")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

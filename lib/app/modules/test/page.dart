import 'package:booklog/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TestPage')),
      body: ListView(
        children: [
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            child: const Text("HOME"),
          )
        ],
      ),
    );
  }
}

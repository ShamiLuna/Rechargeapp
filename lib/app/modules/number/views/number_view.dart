import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/number_controller.dart';

class NumberView extends GetView<NumberController> {
  const NumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NumberView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NumberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

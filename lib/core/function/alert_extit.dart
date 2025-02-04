import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertExtit() {
  Get.defaultDialog(
      title: 'import',
      middleText: ' Are You Sure To Exited In App',
      actions: [
        ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: const Text('Conform'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancel'),
        )
      ]);
}

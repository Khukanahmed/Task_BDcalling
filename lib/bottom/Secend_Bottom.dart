import 'package:flutter/material.dart';

import '../model_class/model.dart';

class secondScreen extends StatelessWidget {
  final List<AndroidVersion> versions2;

  secondScreen({super.key, required this.versions2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: versions2.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(versions2[index].title ?? "",style: TextStyle(fontWeight: FontWeight.w500),),
                  ),
                );
              }),
        ));
  }
}

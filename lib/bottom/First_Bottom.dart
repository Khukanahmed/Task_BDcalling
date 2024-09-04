import 'package:flutter/material.dart';

import '../model_class/model.dart';

class FirstScreen extends StatelessWidget {
  final List<AndroidVersion> versions;

  FirstScreen({super.key, required this.versions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: versions.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(versions[index].title ?? "",style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                );
              }),
        ));
  }
}

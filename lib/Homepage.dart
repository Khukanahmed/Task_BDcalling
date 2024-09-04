import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smtask/bottom/First_Bottom.dart';
import 'package:smtask/widget/button_model.dart';

import 'bottom/Secend_Bottom.dart';
import 'model_class/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<dynamic> jsonData1 = [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "3": {"id": 3, "title": "KitKat"}
    },
    [
      {"id": 4, "title": "Lollipop"},

      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ];


  List<AndroidVersion> parseJson(dynamic json) {
    List<AndroidVersion> versionList = [];
    if (json is List) {
      for (var item in json) {
        versionList.addAll(parseJson(item));
      }
    } else if (json is Map) {
      json.forEach((key, value) {
        if (value is Map &&
            value.containsKey('id') &&
            value.containsKey('title')) {
          versionList
              .add(AndroidVersion(id: value['id'], title: value['title']));
        }
      });
    }
    return versionList;
  }

  final List<dynamic> jsonData2 = [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "3": {"id": 3, "title": "KitKat"}
    },
    {
      "0": {"id": 8, "title": "Froyo"},
      "2": {"id": 9, "title": "Éclair"},
      "3": {"id": 10, "title": "Donut"}
    },
    [
      {"id": 4, "title": "Lollipop"},
      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ];


  List<AndroidVersion> parseJson2(dynamic json) {
    List<AndroidVersion> versionList2 = [];
    if (json is List) {
      for (var item in json) {
        versionList2.addAll(parseJson(item));
      }
    } else if (json is Map) {
      json.forEach((key, value) {
        if (value is Map &&
            value.containsKey('id') &&
            value.containsKey('title')) {
          versionList2
              .add(AndroidVersion(id: value['id'], title: value['title']));
        }
      });
    }
    return versionList2;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('asset/logo.png'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Shimmer.fromColors(
                  baseColor: Colors.green,
                  highlightColor: Colors.yellow,
                  child: const Text(
                    'Welcome My App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Button('First Button', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstScreen(
                          versions: parseJson(jsonData1),
                        ),
                      ),
                    );
                  }, const BorderRadius.only(topLeft: Radius.circular(30))),
                  const SizedBox(
                    height: 20,
                  ),
                  Button('Second Button', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => secondScreen(
                                  versions2: parseJson(jsonData2),
                                )));
                  }, const BorderRadius.only(bottomRight: Radius.circular(30))),
                ],
              ),
            ),

            // Text(name[2])
          ],
        ),
      ),
    );
  }
}

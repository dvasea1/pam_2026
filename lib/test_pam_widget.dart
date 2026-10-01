import 'package:flutter/material.dart';
import 'package:test_pam/counter_widget.dart';
import 'package:test_pam/dynamic_list_widget.dart';
import 'package:test_pam/food_delvery_home_page.dart';
import 'package:test_pam/listview_widget.dart';
import 'package:test_pam/title_widget.dart';

import 'widgets/categories_carousel_widget.dart';

class TestPamWidget extends StatefulWidget {
  const TestPamWidget({super.key});

  @override
  State<TestPamWidget> createState() => _TestPamState();
}

class _TestPamState extends State<TestPamWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple app bar')),
        body: Container(
          width: double.infinity,
          //color: Colors.green,
          child: FoodDelveryHomePage()// ListviewWidget()//CounterWidget(),
        ),
      ),
    );
  }
}

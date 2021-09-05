import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:list_views/listview_builder.dart';
import 'package:list_views/listview_seperator.dart';
import 'package:list_views/simple_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: pushButton(
            'Simple List View',
            () {
              Get.to(SimpleListView());
            },
          )),
          SizedBox(
            height: 15.h,
          ),
          Center(
              child: pushButton(
            'ListView Seperator',
            () {
              Get.to(ListViewSeperator());
            },
          )),
          SizedBox(
            height: 15.h,
          ),
          Center(
              child: pushButton(
            'ListView Builder',
            () {
              Get.to(ListViewWithBuilder());
            },
          )),
        ],
      ),
    );
  }

  pushButton(String label, Function()? goto) {
    return GestureDetector(
      onTap: goto,
      child: Container(
        height: 45.h,
        width: 250.w,
        decoration: BoxDecoration(
          color: Color(0xFF61A3FE),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.arrow_right_alt_sharp, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

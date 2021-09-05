import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewWithBuilder extends StatefulWidget {
  const ListViewWithBuilder({Key? key}) : super(key: key);

  @override
  _ListViewWithBuilderState createState() => _ListViewWithBuilderState();
}

class _ListViewWithBuilderState extends State<ListViewWithBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder Demo'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 20.h),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: cardData[index].shadowColor,
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                colors: cardData[index].gradientColorIndex!,
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.label,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            cardData[index].title!,
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Switch(
                          value: false,
                          onChanged: (value) {
                            value = value ? false : true;
                          })
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Row(
                      children: [
                        Text(
                          cardData[index].duration!,
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cardData[index].time!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.sp,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 40.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CardInfo {
  final String? title;
  final String? duration;
  final String? time;
  final List<Color>? gradientColorIndex;
  final Color shadowColor;

  CardInfo(
      {this.title,
      this.duration,
      this.time,
      this.gradientColorIndex,
      this.shadowColor = Colors.blue});
}

List<CardInfo> cardData = [
  CardInfo(
    title: 'Office',
    duration: 'Mon - Fri',
    time: '07:15 AM',
    gradientColorIndex: GradientColors.sky,
    shadowColor: ShadowColors.skyShadow,
  ),
  CardInfo(
    title: 'Gym',
    duration: 'Mon - Sat',
    time: '05:15 AM',
    gradientColorIndex: GradientColors.fire,
    shadowColor: ShadowColors.fireShadow,
  ),
  CardInfo(
    title: 'Pills',
    duration: 'Mon - Sun',
    time: '08:00 PM',
    gradientColorIndex: GradientColors.sea,
    shadowColor: ShadowColors.seaShadow,
  ),
  CardInfo(
    title: 'Emails',
    duration: 'Mon - Sun',
    time: '09.15 PM',
    gradientColorIndex: GradientColors.mango,
    shadowColor: ShadowColors.mangoShadow,
  ),
  CardInfo(
    title: 'Journal',
    duration: 'Mon - Sun',
    time: '10.00 PM',
    gradientColorIndex: GradientColors.sky,
    shadowColor: ShadowColors.skyShadow,
  ),
  CardInfo(
    title: 'Lights Out',
    duration: 'Mon - Sun',
    time: '10.30 PM',
    gradientColorIndex: GradientColors.sunset,
    shadowColor: ShadowColors.sunsetShadow,
  ),
];

class GradientColors {
  final List<Color> colors;
  GradientColors(this.colors);

  static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
  static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
  static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class ShadowColors {
  final Color colour;
  ShadowColors(this.colour);

  static Color skyShadow = Color(0xFF6448FE);
  static Color sunsetShadow = Color(0xFFFE6197);
  static Color seaShadow = Color(0xFF61A3FE);
  static Color mangoShadow = Color(0xFFFFA738);
  static Color fireShadow = Color(0xFFFF5DCD);
}

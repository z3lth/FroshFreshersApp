import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:meditation/detail_page.dart';
import 'package:meditation/girlshostel_page.dart';
import 'package:meditation/hostela_page.dart';
import 'package:meditation/hostelh_page.dart';
import 'package:meditation/hostelj_page.dart';

import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_card1.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';
//import 'package:url_launcher/url_launcher.dart';

class BoyshostelPage extends StatefulWidget {
  const BoyshostelPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BoyshostelPage> createState() => _BoyshostelPageState();
}

class _BoyshostelPageState extends State<BoyshostelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 70.w,
                right: 50.w,
                top: 36.h,
              ),

            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 121.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 35.w,),
                  InkWell(
                    child: DiscoverCard1(

                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelaPage()));
                      },
                      title: "Hostel A",
                      subtitle: "Established 1980",
                      gradientStartColor: Color(0xff13DEA0),
                      gradientEndColor: Color(0xff06B782),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),

            SizedBox(
              height: 121.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 35.w,),
                  InkWell(
                    child: DiscoverCard1(

                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelhPage()));
                      },
                      title: "Hostel H",
                      subtitle: "Established 1980",
                      gradientStartColor: Color(0xffFC67A7),
                      gradientEndColor: Color(0xffF6815B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),

            SizedBox(
              height: 121.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 35.w,),
                  InkWell(
                    child: DiscoverCard1(

                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HosteljPage()));
                      },
                      title: "Hostel J",
                      subtitle: "Established 2006",
                      gradientStartColor: Color(0xff13DEA0),
                      gradientEndColor: Color(0xff06B782),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),











          ],
        ),
      ),
    );
  }
  void onSeeAllTapped() {
  }

  void onSleepMeditationTapped() {
    Get.to(()=> DetailPage(), transition: Transition.rightToLeft);
  }

  void onDepressionHealingTapped() {
  }

  void onSearchIconTapped() {
  }
}

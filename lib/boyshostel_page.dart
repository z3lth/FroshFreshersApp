import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:meditation/detail_page.dart';
import 'package:meditation/girlshostel_page.dart';
import 'package:meditation/hostelc_page.dart';
import 'package:meditation/hostelh_page.dart';
import 'package:meditation/hostelj_page.dart';
import 'package:meditation/hostelk_page.dart';
import 'package:meditation/hostell_page.dart';
import 'package:meditation/hostelm_page.dart';
import 'package:meditation/hostelo_page.dart';
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("BOYS HOSTELS",
                      textAlign:TextAlign.center,
                      style: TextStyle(

                          color: Colors.white,
                          fontSize: 30.w,
                          fontWeight: FontWeight.bold)),
                  // InkWell(
                  //   borderRadius: BorderRadius.circular(360),
                  //   onTap: onSearchIconTapped,
                  //   child: Container(
                  //     height: 35.w,
                  //     width: 35.w,
                  //     child: Center(
                  //       child: SvgAsset(
                  //         assetName: AssetName.search,
                  //         height: 24.w,
                  //         width: 24.w,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelcPage()));
                      },
                      title: "Hostel B",
                      subtitle: "30 rooms",
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelcPage()));
                      },
                      title: "Hostel C",
                      subtitle: "380 rooms",
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
                      subtitle: "EStablished 1980",
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
                      subtitle: "EStablished 2020",
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelkPage()));
                      },
                      title: "Hostel K ",
                      subtitle: "EStablished 1980",
                      gradientStartColor: Color(0xffFFD541),
                      gradientEndColor: Color(0xffF0B31A),
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostellPage()));
                      },
                      title: "Hostel L",
                      subtitle: "EStablished 1980",
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
                    child: InkWell(
                      child: DiscoverCard1(

                        onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelmPage()));
                        },
                        title: "Hostel M",
                        subtitle: "EStablished 1980",
                        gradientStartColor: Color(0xff13DEA0),
                        gradientEndColor: Color(0xff06B782),
                      ),
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HosteloPage()));
                      },
                      title: "Hostel O",
                      subtitle: "EStablished 1980",
                      gradientStartColor: Color(0xffFC67A7),
                      gradientEndColor: Color(0xffF6815B),
                    ),
                  ),
                ],
              ),
            ),




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

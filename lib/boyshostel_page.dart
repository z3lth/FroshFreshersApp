import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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

import 'hostela_page.dart';
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
                left: 80.w,
                right: 50.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Boys Hostels",
                      textAlign:TextAlign.center,
                      style: GoogleFonts.poppins(
                      textStyle: TextStyle(

                          color: Colors.white,
                          fontSize: 32.w,
                          fontWeight: FontWeight.bold))),
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelaPage()));
                      },
                      title: "Hostel A",
                      subtitle: " ",
                      gradientStartColor: Color(0xffFF4B5C),
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
                      title: "Hostel B",
                      subtitle: " ",
                      gradientStartColor: Color(0xff056674),
                      gradientEndColor: Color(0xff66BFBF),
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
                      subtitle: " ",
                      gradientStartColor: Color(0xffFF4B5C),
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HostelhPage()));
                      },
                      title: "Hostel H",
                      subtitle: " ",
                      gradientStartColor: Color(0xff056674),
                      gradientEndColor: Color(0xff66BFBF),
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
                      subtitle: " ",
                      gradientStartColor: Color(0xffFF4B5C),
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
                      subtitle: " ",
                      gradientStartColor: Color(0xff056674),
                      gradientEndColor: Color(0xff66BFBF),
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
                      subtitle: " ",
                      gradientStartColor: Color(0xffFF4B5C),
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
                        subtitle: " ",
                        gradientStartColor: Color(0xff056674),
                        gradientEndColor: Color(0xff66BFBF),
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
                      subtitle: " ",
                      gradientStartColor: Color(0xffFF4B5C),
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



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/culturalsoc_page.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/nontechsoc_page.dart';
import 'package:meditation/technicalsoc_page.dart';

import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';


class StartFrontPage extends StatefulWidget {
  const StartFrontPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StartFrontPage> createState() => _StartFrontPageState();
}

class _StartFrontPageState extends State<StartFrontPage> {
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
                    left: 130.w,
                    right: 50.w,
                    top: 36.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gallery",
                          //textAlign:TextAlign.center,
                          style: TextStyle(

                              color: Colors.white,
                              fontSize: 34.w,
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
                Padding(
                    padding:  EdgeInsets.symmetric(vertical: 28.w),
                    child: Column(
                      //shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                        children: [
                          DiscoverSmallCard(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>NontechsocPage()));
                            },
                            title: "Non-Tech Socities",

                            gradientStartColor: Color(0xff13DEA0),
                            gradientEndColor: Color(0xff06B782),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          DiscoverSmallCard(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TechnicalsocPage()));

                            },
                            title: "Tech Socities",
                            gradientStartColor: Color(0xffFFD541),
                            gradientEndColor: Color(0xffF0B31A),
                            icon:    SvgAsset(
                              assetName: AssetName.tape,
                              height: 24.w,
                              width: 24.w,
                            ),
                          ),

                          SizedBox(
                            height: 16.h,
                          ),

                          DiscoverSmallCard(

                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CulturalSocPage()));
                            },
                            title: "Cultural Socities",
                            gradientStartColor: Color(0xff13DEA0),
                            gradientEndColor: Color(0xff06B782),
                            icon:    SvgAsset(
                              assetName: AssetName.tape,
                              height: 24.w,
                              width: 24.w,
                            ),
                          ),
                        ]
                    )
                )
              ]
          ),
        )
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

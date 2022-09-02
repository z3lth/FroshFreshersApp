import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/boxes/eb.dart';
import 'package:meditation/boxes/skb.dart';
import 'package:meditation/boxes/smb.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/starterkitmain.dart';
import 'package:meditation/studymaterial.dart';
import 'package:meditation/faq.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/profile_page1.dart';
import 'package:meditation/widgets/svg_asset.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_background/animated_background.dart';

import 'boxes/faqb.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}


class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return

    Scaffold(

    // backgroundColor: Color(0xff121421),
      body:
        Container(
        constraints: BoxConstraints.expand(),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/front.gif'),
    fit: BoxFit.cover),
    ),
      child: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [



            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 16.h,
              ),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold)),

                ],
              ),
            ),



            SizedBox(
              height: 10.h,
            ),

            SizedBox(
              height: 178.w,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 35.w),
                  DiscoverCard(
                    tag: "sleepMeditation",
                    onTap: onSleepMeditationTapped,
                    title: "",


                  ),

                ],
              ),
            ),
            // SizedBox(height: 28.h),
            // Padding(
            //   padding: EdgeInsets.only(left: 28.w),
            //   child: Text(
            //     "Recent",
            //     style: TextStyle(
            //         color: Color(0xff515979),
            //         fontWeight: FontWeight.w500,
            //         fontSize: 14.w),
            //   ),
            // ),


            Padding(
              padding:  EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 40.h,
              ),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 19.w, mainAxisExtent:  125.w, mainAxisSpacing: 19.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [

                  SKB(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>StarterPage()));

                    },
                    title: "Starter Kit",
                    gradientStartColor: Color(0xff13DEA0),
                    gradientEndColor: Color(0xff06B782),
                    
                  ),
                  SMB(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>StudyPage()));

                    },
                    title: "  Study Material",
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                    icon:    SvgAsset(
                      assetName: AssetName.tape,
                      height: 24.w,
                      width: 50.w,
                    ),
                  ),
                  FAQB(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>FAQPage()));

                    },
                    title: "     FAQ",
                    gradientStartColor: Color(0xffFFD541),
                    gradientEndColor: Color(0xffF0B31A),
                  ),
                  EB(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>ProfilePage1()));

                    },
                    title: "  Events",
                    icon:  SvgAsset(
                      assetName: AssetName.tape,
                      height: 24.w,
                      width: 24.w,
                    ),
                  ),
                ],

              ),
            )
          ],
        ),
      ),
    ));

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

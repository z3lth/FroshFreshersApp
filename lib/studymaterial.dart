import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation/boxes/lmsb.dart';
import 'package:meditation/boxes/wkb.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/widgets/acadblock.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card2.dart';
import 'package:meditation/widgets/discover_card5.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class StudyPage extends StatefulWidget {
  const StudyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      appBar: AppBar(
        title: Image.asset('assets/images/tietlogo3.png'),
        backgroundColor: Color(0xff1C2031),
        shadowColor: Colors.black,
      ) ,
      body: Container(
      constraints: BoxConstraints.expand(),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/Untitled design (1).png'),
    fit: BoxFit.cover),
    ),
      child: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 65.w,
                right: 1.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Study Material",
                      //textAlign:TextAlign.center,
                      style: GoogleFonts.poppins(
                      textStyle: TextStyle(

                          color: Colors.white,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold)),)
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
              height: 150.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 35.w,),
                  DiscoverCard2(

                    onTap: ()async{
                      final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');

                      if (!await launchUrl(_url)) {
                        throw 'Could not launch $_url';
                      }
                    },
                    title: "Timetable",
                    subtitle: "How to read timetable?",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.w),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 19.w, mainAxisExtent:  125.w, mainAxisSpacing: 19.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  LMSB(
                    onTap: () async{
                      final Uri _url = Uri.parse('https://lms.thapar.edu/moodle/');

                      if (!await launchUrl(_url)) {
                        throw 'Could not launch $_url';
                      }
                    },
                    title: "LMS",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                  WKB(
                    onTap: () async{
                      final Uri _url = Uri.parse('https://webkiosk.thapar.edu/index.jsp?_ga=2.64570028.246148690.1658148719-281473518.1648488925');

                      if (!await launchUrl(_url)) {
                        throw 'Could not launch $_url';
                      }
                    },
                    title: "Webkiosk",
                    gradientStartColor: Color(0xffFF4B5C),
        gradientEndColor: Color(0xffF6815B),
                    // icon:    SvgAsset(
                    //   assetName: AssetName.tape,
                    //   height: 24.w,
                    //   width: 24.w,
                    // ),
                  ),


                ],

              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 150.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 35.w,),
                  DiscoverCard5(

                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>acadPage()));

                    },
                    title: "Academic "
                        "Block",
                    //subtitle: "How to read timetable?",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
                  ),
                ],
              ),
            ),

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

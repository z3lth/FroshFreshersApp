import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/SocietyPages/AdventureClub_page.dart';
import 'package:meditation/SocietyPages/Echoes_page.dart';
import 'package:meditation/SocietyPages/Faps_page.dart';
import 'package:meditation/SocietyPages/LitSoc_page.dart';
import 'package:meditation/SocietyPages/Mudra_page.dart';
import 'package:meditation/SocietyPages/NOX_page.dart';
import 'package:meditation/SocietyPages/TFF_page.dart';
import 'package:meditation/SocietyPages/TICC_page.dart';
import 'package:meditation/SocietyPages/TNT_page.dart';
import 'package:meditation/SocietyPages/ThaparMovieClub_page.dart';
import 'package:meditation/SocietyPages/Virsa_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:meditation/detail_page.dart';
import 'package:meditation/girlshostel_page.dart';
// import 'package:meditation/hostelc_page.dart';
import 'package:meditation/hostelh_page.dart';
import 'package:meditation/hostelj_page.dart';
// import 'package:meditation/hostelm_page.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card1.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';

import 'SocietyPages/Saic_Page.dart';
//import 'package:url_launcher/url_launcher.dart';

class CulturalSocPage extends StatefulWidget {
  const CulturalSocPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CulturalSocPage> createState() => _CulturalSocPageState();
}

class _CulturalSocPageState extends State<CulturalSocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      appBar: AppBar(
        title: Image.asset('assets/images/tietlogo3.png'),
        backgroundColor: Color(0xff1C2031),
        shadowColor: Colors.black,
      ) ,
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 45.w,
                right: 1.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cultural Societies",
                      textAlign:TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(

                            color: Colors.white,
                            fontSize: 30.w,
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
              height: 121.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 35.w,),
                  InkWell(
                    child: DiscoverCard1(

                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>SaicPage()));
                      },
                      title: "SAIC",
                      subtitle: "Student Alumni Interaction Cell",
                      gradientStartColor: Color(0xffFF4B5C),
                      gradientEndColor: Color(0xffF6815B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),

            //Padding(
            // padding:  EdgeInsets.symmetric(horizontal: 28.w),
            //child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 19.w, mainAxisExtent:  125.w, mainAxisSpacing: 19.w),
            //  shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            // children: [

            //DiscoverSmallCard(
            //   // onTap: () async{
            //   //   final Uri _url = Uri.parse('https://webkiosk.thapar.edu/index.jsp?_ga=2.64570028.246148690.1658148719-281473518.1648488925');
            //   //
            //   //   if (!await launchUrl(_url)) {
            //   //     throw 'Could not launch $_url';
            //   //   }
            //   // },
            //   title: "Webkiosk",
            //   gradientStartColor: Color(0xffFFD541),
            //   gradientEndColor: Color(0xffF0B31A),
            //   icon:    SvgAsset(
            //     assetName: AssetName.tape,
            //     height: 24.w,
            //     width: 24.w,
            //   ),
            // ),

            // ],

            // ),
            // ),
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>VirsaPage()));
                      },
                      title: "Virsa",
                      subtitle: "The Asscence of Punjab",
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>FapsPage()));
                      },
                      title: "Faps",
                      subtitle: "Fine arts and Photography Club",
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>EchoesPage()));
                      },
                      title: "Echoes",
                      subtitle: "Student Panorama of TIET",
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
                  DiscoverCard1(


                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>MudraPage()));
                    },
                    title: "Mudra ",
                    subtitle: " ",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>MovieClubPage()));
                      },
                      title: "Thapar Movie Club",
                      subtitle: "TMC",
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
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>AdvPage()));
                      },
                      title: "Adventure Club",
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
                  DiscoverCard1(

                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>TffPage()));
                    },
                    title: "Thapar Food Festival",
                    subtitle: "TFF",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
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
                  DiscoverCard1(

                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>LitsocPage()));
                    },
                    title: "Literary Society",
                    subtitle: "",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
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
                  DiscoverCard1(

                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>NOXPage()));
                    },
                    title: "Nox Dance Society",
                    subtitle: "",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
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
                  DiscoverCard1(

                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>TiccPage()));
                    },
                    title: "TICC",
                    subtitle: "Thapar Counselling Cell",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
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
                  DiscoverCard1(

                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>TntPage()));
                    },
                    title: "Thapar Nautanki Club",
                    subtitle: "TNT",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10.h),
            //
            // SizedBox(
            //   height: 121.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard1(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Hostel M",
            //         subtitle: "EStablished 1980",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),
            //
            // SizedBox(
            //   height: 121.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard1(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Hostel N",
            //         subtitle: "EStablished 1980",
            //         gradientStartColor: Color(0xffFFD541),
            //         gradientEndColor: Color(0xffF0B31A),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),
            //
            // SizedBox(
            //   height: 121.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard1(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Hostel O",
            //         subtitle: "EStablished 1980",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),
            //
            // SizedBox(
            //   height: 121.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard1(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Hostel PG",
            //         subtitle: "EStablished 1980",
            //         gradientStartColor: Color(0xff13DEA0),
            //         gradientEndColor: Color(0xff06B782),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),
            //
            // SizedBox(
            //   height: 121.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard1(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Hostel Q",
            //         subtitle: "EStablished 1980",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),

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

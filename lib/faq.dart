import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/detail_page.dart';
import '../frostedglass.dart';


class FAQPage extends StatefulWidget {
  const FAQPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
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


        alignment: Alignment.center,

        child:Column(

          children:

          [ SizedBox(height: 50.h),FrostedGlassBox(

            theWidth: 350.0,

            theHeight: 600.0,



            theChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[

                  Text(
                    'Frequently Asked Questions                                                                                           ',
                    style: TextStyle(color: Colors.white54, fontSize: 22.0,fontFamily: 'Roboto',fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                  Text(' ',


                    style: TextStyle(color: Colors.white54, fontSize: 15.0,fontFamily: 'Roboto'), textAlign: TextAlign.center,),
                  Text("""
  Ques: Would all the hostels provide mattresses?
    Ans: Students allotted I, J and H hostels have to arrange for their own mattresses.Other than that,rest of the hostels provide mattresses.

    Ques: Is there any internet facility on campus?
    Ans: Yes, there are WiFi access points with SSID “EACCESS” all over the campus. Please refer to WiFi and Passwords under E-content and Online info

    Ques: Is the mess fee included in the hostel fees?
    Ans: No, the mess fee is not included in the hostel fees. It has to be paid separately."""

                    ,


                    style: TextStyle(color: Colors.white54, fontSize: 20.0,), textAlign: TextAlign.center,),

                  SizedBox(height: 10.h),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         InkWell(
                  //             onTap: () async{
                  //               final Uri _url = Uri.parse('https://www.instagram.com/froshtiet/');
                  //
                  //               if (!await launchUrl(_url)) {
                  //                 throw 'Could not launch $_url';
                  //               }
                  //             },
                  //           child:
                  //         Image.asset('assets/pics/instagram.png',
                  //         width: 35,
                  //         height: 35,
                  //       )),Text('/froshtiet',style: TextStyle(color: Colors.white54, fontSize: 25.0,), textAlign: TextAlign.center, ),]),
                  //
                  //       SizedBox(height: 10.h),
                  //       Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [InkWell(
                  //               onTap: () async{
                  //                 final Uri _url = Uri.parse('https://www.youtube.com/c/FroshTIET');
                  //
                  //                 if (!await launchUrl(_url)) {
                  //                   throw 'Could not launch $_url';
                  //                 }
                  //               },
                  //               child:
                  //               Image.asset('assets/pics/youtube.png',
                  //                 width: 35,
                  //                 height: 35,
                  //               )),Text('/froshtiet',style: TextStyle(color: Colors.white54, fontSize: 25.0,), textAlign: TextAlign.center, ),]),
                  //
                  //       SizedBox(height: 10.h),
                  //       Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [InkWell(
                  //               onTap: () async{
                  //                 final Uri _url = Uri.parse('https://www.linkedin.com/company/frosh-tiet');
                  //
                  //                 if (!await launchUrl(_url)) {
                  //                   throw 'Could not launch $_url';
                  //                 }
                  //               },
                  //               child:
                  //               Image.asset('assets/pics/linkedin.png',
                  //                 width: 35,
                  //                 height: 35,
                  //               )),Text('/froshtiet',style: TextStyle(color: Colors.white54, fontSize: 25.0,), textAlign: TextAlign.center, ),]),
                  //
                  //       SizedBox(height: 10.h),
                  //
                  //
                  //
                  // //SizedBox(width: 350.w,),
                  //     SizedBox(height: 10.h),
                  // DiscoverCard3(
                  //
                  //   onTap: (){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>GalleryPage()));
                  //
                  //   },
                  //   title: "Our Team",
                  //
                  //   //subtitle: "How to read timetable?",
                  //  // gradientStartColor: Color(0xffFC67A7),
                  //   //gradientEndColor: Color(0xffF6815B),
                  // ),
                  //     ]
                  //     )
                ]
            ),
          )
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



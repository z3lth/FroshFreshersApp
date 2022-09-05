import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card4.dart';
import 'package:meditation/widgets/discover_card6.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';
//import 'package:url_launcher/url_launcher.dart';

class Wednesday extends StatefulWidget {
  const Wednesday({
    Key? key,
  }) : super(key: key);

  @override
  State<Wednesday> createState() => _WednesdayState();
}

class _WednesdayState extends State<Wednesday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 125.w,
                right: 50.w,
                top: 0.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text("EVENTS",
                  //     //textAlign:TextAlign.center,
                  //     style: TextStyle(
                  //
                  //         color: Colors.white,
                  //         fontSize: 30.w,
                  //         fontWeight: FontWeight.bold)),
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

            // Container(
            //   height: 120.h,
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(
            //         width: 35.w,
            //       ),
            //       CategoryBoxes(
            //         text: "Insomnia",
            //         onPressed: (value) => print(value),
            //
            //       ),
            //       CategoryBoxes(
            //         text: "Depression",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Baby Sleep",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Insomnia",
            //         onPressed: (value) => print(value),
            //       ),
            //     ],
            //   ),
            // ),


            SizedBox(
              height: 95.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 50.w,
                   child: Align(
                     alignment: Alignment(0.5,0.0),

                   child: Text(
                     '10:30 am',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 16

                     )
                   )
              )
                  ),


                   DiscoverCard6(

                   //  onTap: ()async{
                   //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
                   //
                   //   if (!await launchUrl(_url)) {
                   //     throw 'Could not launch $_url';
                   //    }
                   // },
                    title: "Address by Prof. Harcharan Singh on TIET - LMS",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
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
            

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Hostel C",
            //         subtitle: "EStablished 2020",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

    

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 50.w,
            //         child: Align(
            //             alignment: Alignment(0.5,0.0),
            //
            //             child: Text(
            //                 '11:00 am',
            //                 textAlign: TextAlign.center,
            //                 style: TextStyle(
            //                     color: Colors.white,
            //                     fontSize: 15
            //                 )
            //             )
            //         ),
            //       ),
            //
            //
            //
            //
            //
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Intro for students by the DoSA",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

            SizedBox(
              height: 95.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 50.w,
                    child: Align(
                        alignment: Alignment(0.5,0.0),

                        child: Text(
                            '11:30 am',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            )
                        )
                    ),
                  ),

                  DiscoverCard6(

                    //  onTap: ()async{
                    //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
                    //
                    //   if (!await launchUrl(_url)) {
                    //     throw 'Could not launch $_url';
                    //    }
                    // },
                    title: "Introduction for students by \nDr. Maninder Singh (DoAA)",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h,),

            SizedBox(
              height: 95.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [

                  SizedBox(width: 50.w,
                  child: Align(
                      alignment: Alignment(0.5,0.0),

                      child: Text(
                          '12:30 pm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          )
                      )
                  ),
                  ),

                  DiscoverCard6(

                    //  onTap: ()async{
                    //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
                    //
                    //   if (!await launchUrl(_url)) {
                    //     throw 'Could not launch $_url';
                    //    }
                    // },
                    title: "LUNCH",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),

            

            SizedBox(
              height: 95.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 50.w,
                    child: Align(
                        alignment: Alignment(0.5,0.0),
                        child: Text(
                          '2:30 pm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          )
                      )

                      
                    ),
                  ),

                  DiscoverCard6(

                    //  onTap: ()async{
                    //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
                    //
                    //   if (!await launchUrl(_url)) {
                    //     throw 'Could not launch $_url';
                    //    }
                    // },
                    title: "Non - Tech Workshop",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h,),

            

            SizedBox(
              height: 95.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [

                  SizedBox(width: 50.w,
                  child: Align(
                      alignment: Alignment(0.5,0.0),

                      child: Text(
                          '5:30 pm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          )
                      )
                  ),
                  ),

                  DiscoverCard6(

                    //  onTap: ()async{
                    //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
                    //
                    //   if (!await launchUrl(_url)) {
                    //     throw 'Could not launch $_url';
                    //    }
                    // },
                    title: "Witty Vendetta",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),


            SizedBox(
              height: 95.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 50.w,
                    child: Align(
                        alignment: Alignment(0.5,0.0),
                        child: Text(
                          '8:00 pm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          )
                      )

                      
                    ),
                  ),

                  DiscoverCard6(

                    //  onTap: ()async{
                    //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
                    //
                    //   if (!await launchUrl(_url)) {
                    //     throw 'Could not launch $_url';
                    //    }
                    // },
                    title: "DINNER",
                    gradientStartColor: Color(0xff056674),
                    gradientEndColor: Color(0xff66BFBF),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h,),

            SizedBox(
              height: 95.w,

              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 50.w,
                    child: Align(
                        alignment: Alignment(0.5,0.0),
                        child: Text(
                          '9:15 pm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          )
                      )

                      
                    ),
                  ),

                  DiscoverCard6(

                    //  onTap: ()async{
                    //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
                    //
                    //   if (!await launchUrl(_url)) {
                    //     throw 'Could not launch $_url';
                    //    }
                    // },
                    title: "Hostel Interaction",
                    gradientStartColor: Color(0xffFF4B5C),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h,),

            


            
            // SizedBox(height: 10.h),

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Hostel I",
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
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Address by the Head, TICC",
            //         gradientStartColor: Color(0xffFFD541),
            //         gradientEndColor: Color(0xffF0B31A),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Adress by the Head, Central Library",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),
            //
            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Sports Mania",
            //         gradientStartColor: Color(0xff13DEA0),
            //         gradientEndColor: Color(0xff06B782),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Guest lecture",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Non-Technical Workshop",
            //         gradientStartColor: Color(0xffFFD541),
            //         gradientEndColor: Color(0xffF0B31A),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "Technical workshop",
            //         gradientStartColor: Color(0xffFC67A7),
            //         gradientEndColor: Color(0xffF6815B),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "The Witty Vendetta",
            //         gradientStartColor: Color(0xff13DEA0),
            //         gradientEndColor: Color(0xff06B782),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),

            // SizedBox(
            //   height: 95.w,
            //
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(width: 35.w,),
            //       DiscoverCard4(
            //
            //         //  onTap: ()async{
            //         //    final Uri _url = Uri.parse('https://youtu.be/T0GaMCVaJlo');
            //         //
            //         //   if (!await launchUrl(_url)) {
            //         //     throw 'Could not launch $_url';
            //         //    }
            //         // },
            //         title: "The Epilogue",
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

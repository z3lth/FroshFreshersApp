import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/FrostedGlass1.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/discover_page.dart';
import 'package:meditation/gallery.dart';
import 'package:meditation/screens/home.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card3.dart';
import 'package:meditation/widgets/svg_asset.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../frostedglass.dart';
import 'package:google_fonts/google_fonts.dart';

class LitsocPage extends StatelessWidget {
  const LitsocPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Litsoc',
          textAlign:TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Color(0xff1C2031),
        shadowColor: Colors.black,

      ) ,
      body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            // Import image in pubspec.yaml first
            image: AssetImage('assets/pics/bgallsoc.jpg'),
            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.cover,
          ),
        ),
        // alignment is for centering the frostedglass, we don't use Center();
        //  because if you want to change its position and remove the Center();
        //  widget, everything will get messy the script crashes.
        alignment: Alignment.center,

        child:Column(


          children:

          [ SizedBox(height: 20.h),Padding(
            padding: const EdgeInsets.all(10.0),
            child: FrostedGlassBox(
              // theWidth is the width of the frostedglass
                theWidth: 350.0,
                // theHeight is the height of the frostedglass
                theHeight: 600.0,
                // theChild is the child of the frostedglass


                theChild: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Image.asset('assets/pics/litsoc.png',
                            width: 150,
                            height: 150,
                            fit:BoxFit.fill
                        ),
                        SizedBox(height: 10.h),

                        // Text(
                        //   'About Us                                                                                           ',
                        //   //'Litsoc comprises of various events for the fresher class of Thapar Institute of Engineering and Technology to ease their new surroundings.                                                                  '
                        //   //  'instagram.com/Litsoctiet/                                 '
                        //   //   'linkedin.com/company/Litsoc-tiet                           '
                        //   //   'facebook.com/Litsoctiet         ',
                        //   style: TextStyle(color: Colors.white54, fontSize: 30.0,fontFamily: 'Roboto',fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)

                        Text('Thapar Literary Society is about all things literature. Eight sub-societies make us: Muse(English Book Club), Anubhooti(Hindi Literature), Punjabi Sahitya Sabha(Punjabi Literature), Debating Society, Thapar Quizzing Club, Theater Society, Poetry Society and Cineastes(Cinema Society). ',

                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white, letterSpacing: .5,fontSize: 15.0,),
                          ),
                        ),
                        Text('',


                          style: TextStyle(color: Colors.white, fontSize: 20.0,), textAlign: TextAlign.center,),

                        SizedBox(height: 10.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // InkWell(
                              //     onTap: () async{
                              //       final Uri _url = Uri.parse('https://www.instagram.com/Litsoctiet/');
                              //
                              //       if (!await launchUrl(_url)) {
                              //         throw 'Could not launch $_url';
                              //       }
                              //     },
                              //   child:
                              Image.asset('assets/pics/instagram.png',
                                width: 35,
                                height: 35,
                              ),
                              TextButton(onPressed: ()async{
                                final Uri _url = Uri.parse('https://www.instagram.com/litsoc.thapar/');

                                if (!await launchUrl(_url)) {
                                  throw 'Could not launch $_url';
                                }
                              }, child:
                              Text('/Litsoctiet',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
                                ),
                              ),
                              )]),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //
                              Image.asset('assets/pics/web.png',
                                width: 35,
                                height: 35,
                              ),
                              TextButton(onPressed: ()async{
                                final Uri _url = Uri.parse('https://litsoctiet.contactin.bio/');

                                if (!await launchUrl(_url)) {
                                  throw 'Could not launch $_url';
                                }
                              }, child:
                              Text('/Litsoctiet',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
                                ),
                              ),
                              )
                            ]
                        ),

                        // Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       //
                        //       Image.asset('assets/pics/linkedin.png',
                        //         width: 35,
                        //         height: 35,
                        //       ),
                        //       TextButton(onPressed: ()async{
                        //         final Uri _url = Uri.parse('https://www.linkedin.com/company/Litsoc-tiet');
                        //
                        //         if (!await launchUrl(_url)) {
                        //           throw 'Could not launch $_url';
                        //         }
                        //       }, child:
                        //       Text('/Litsoctiet',style: TextStyle(color: Colors.white54, fontSize: 25.0,), textAlign: TextAlign.center, ),)]),

                        SizedBox(height: 10.h),



                        //SizedBox(width: 350.w,),
                        SizedBox(height: 10.h),
                        // DiscoverCard3(
                        //
                        //   onTap: (){
                        //     Navigator.push(context, MaterialPageRoute(builder: (context)=>GalleryPage()));
                        //
                        //   },
                        //   title: "Our Team",
                        //
                        //   //subtitle: "How to read timetable?",
                        //   // gradientStartColor: Color(0xffFC67A7),
                        //   //gradientEndColor: Color(0xffF6815B),
                        // ),

                      ]
                  ),
                )
            ),
          ),
            // Divider(
            //   color: Colors.white,
            //   thickness: 3,
            //
            //
            // ),
            Row(
              children: [
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       //
                //       Image.asset('assets/pics/instagram.png',
                //         width: 30,
                //         height: 35,
                //       ),
                //       TextButton(onPressed: ()async{
                //         final Uri _url = Uri.parse('https://www.instagram.com/backslashtiet/');
                //
                //         if (!await launchUrl(_url)) {
                //           throw 'Could not launch $_url';
                //         }
                //       }, child:
                //       Text('/backslashtiet',style: TextStyle(color: Colors.white54, fontSize: 23.0,), textAlign: TextAlign.justify, ),)]),

                // Spacer(),

                //
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       //
                //       Image.asset('assets/pics/web.png',
                //         width: 30,
                //         height: 35,
                //       ),
                //       TextButton(onPressed: ()async{
                //         final Uri _url = Uri.parse('http://backslashdb.in/');
                //
                //         if (!await launchUrl(_url)) {
                //           throw 'Could not launch $_url';
                //         }
                //       }, child:
                //       Text('/backslashiet',style: TextStyle(color: Colors.white54, fontSize: 23.0,), textAlign: TextAlign.start, ),)]),
              ],
            ),
          ],
        ),
      ),
    );

  }

  void onSeeAllTapped() {
  }

  void onSleepMeditationTapped() {
    Get.to(() => DetailPage(), transition: Transition.rightToLeft);
  }
  void onDepressionHealingTapped() {
  }

  void onSearchIconTapped() {
  }
}

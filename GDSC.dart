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


class GdscPage extends StatelessWidget {
  const GdscPage({Key? key}) : super(key: key);

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            // Import image in pubspec.yaml first
            image: AssetImage('assets/pics/DSC_logo2.png'


            ),


            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.contain,
          ),
        ),
        // alignment is for centering the frostedglass, we don't use Center();
        //  because if you want to change its position and remove the Center();
        //  widget, everything will get messy the script crashes.
        alignment: Alignment.center,

        child:Column(

          children:

          [ SizedBox(height: 40.h),FrostedGlassBox1(
            // theWidth is the width of the frostedglass
              theWidth: 350.0,
              // theHeight is the height of the frostedglass
              theHeight: 740.0,
              // theChild is the child of the frostedglass


              theChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[

                    Text(
                      'GDSC TIET                                                                                            ',
                      //'FROSH comprises of various events for the fresher class of Thapar Institute of Engineering and Technology to ease their new surroundings.                                                                  '
                      //  'instagram.com/froshtiet/                                 '
                      //   'linkedin.com/company/frosh-tiet                           '
                      //   'facebook.com/froshtiet         ',
                      style: TextStyle(color: Colors.blue, fontSize: 30.0,fontFamily: 'Roboto',fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                    Text(' ',


                      style: TextStyle(color: Colors.blueAccent, fontSize: 20.0,fontFamily: 'Roboto'), textAlign: TextAlign.center,),
                    Text('The Google Developer Student Club at Thapar Institute of Engineering & Technology is a  community where students can grow their knowledge in a peer-to-peer learning environment and put theory to practise by building projects that solve community problems'
                        ,


                      style: TextStyle(color: Colors.blueAccent, fontSize: 20.0,), textAlign: TextAlign.center,),

                    SizedBox(height: 200.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // InkWell(
                          //     onTap: () async{
                          //       final Uri _url = Uri.parse('https://www.instagram.com/froshtiet/');
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
                            final Uri _url = Uri.parse('https://www.instagram.com/dsc.tiet/');

                            if (!await launchUrl(_url)) {
                              throw 'Could not launch $_url';
                            }
                          }, child:
                          Text('/dsctiet',style: TextStyle(color: Colors.blue, fontSize: 25.0,), textAlign: TextAlign.center, ),)]),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //
                          Image.asset('assets/pics/web.png',
                            width: 35,
                            height: 35,
                          ),
                          TextButton(onPressed: ()async{
                            final Uri _url = Uri.parse('https://www.aiesec.in/');

                            if (!await launchUrl(_url)) {
                              throw 'Could not launch $_url';
                            }
                          }, child:
                          Text('/dsctiet',style: TextStyle(color: Colors.blue, fontSize: 25.0,), textAlign: TextAlign.center, ),)]),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //
                          Image.asset('assets/pics/linkedin.png',
                            width: 35,
                            height: 35,
                          ),
                          TextButton(onPressed: ()async{
                            final Uri _url = Uri.parse('https://www.linkedin.com/company/developer-student-club-thapar/');

                            if (!await launchUrl(_url)) {
                              throw 'Could not launch $_url';
                            }
                          }, child:
                          Text('/gdsctiet',style: TextStyle(color: Colors.blue, fontSize: 25.0,), textAlign: TextAlign.center, ),)]),

                    SizedBox(height: 10.h),



                    //SizedBox(width: 350.w,),
                    SizedBox(height: 10.h),

                  ]
              )
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

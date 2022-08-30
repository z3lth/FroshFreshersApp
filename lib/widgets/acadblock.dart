import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/detail_page.dart';
import '../frostedglass.dart';


class acadPage extends StatefulWidget {
  const acadPage({
    Key? key,
  }) : super(key: key);

  @override
  State<acadPage> createState() => _acadPageState();
}

class _acadPageState extends State<acadPage> {
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

        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,

          children:

          [ SizedBox(height: 50.h),
        Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[

                  Text(
                    'Academic Blocks                                                                                           ',
                    style: TextStyle(color: Colors.white54, fontSize: 22.0,fontFamily: 'Roboto',fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                  Text(' ',


                    style: TextStyle(color: Colors.white54, fontSize: 15.0,fontFamily: 'Roboto'), textAlign: TextAlign.center,),
                  Text("""
  TIET offers a wide variety of academic blocks, each with state-of-the-art infrastructure and facilities as well as the best faculty possible. The blocks are divided as follows:

(i) A-BLOCK	
    A-Block(Administrative Block) of the institute is a 3 storey building which is the major hub of all the administrative work and comprises the Director’s Office, Finance Office, Registrar’s Office,etc.It is located near Street Cafe(Jaggi).


(ii) B-BLOCK
     B-Block is a 3 storey academic block which consists of the Electronics & Communication Department .It also contains the Electronics Labs which are well-equipped with latest machinery and equipments.It is located opposite to G-Block.

(iii) C-BLOCK
C-Block is also a 3 storey academic block located right next to B-block and contains the Department of Biotechnology and Electrical and Instrumentation Department.Lectures and labs of Biotechnology students are held here.The block also includes Digital Electronics Labs which are equipped with state of the art equipments.


(iv) D-BLOCK
D-Block is located right behind the B & C  block and consists of the Civil Engineering Department and the Mechanical Engineering Department.It also consists of CAD- CAM labs which have the latest softwares installed and also has lecture halls.

(v) E-BLOCK	
 E-block is a 2 storey academic block where lectures and tutorial classes of many branches take place.It is located in front of the Aahar Cafeteria.

(vi) F-BLOCK
F-Block is also a 2 storey academic block which serves the same purpose as E-Block,that is, providing rooms for lectures and tutorial classes.It has the same architecture as E-Block and is located right next to it.  

(vii) G-BLOCK
G-Block is a 3 storey academic block located opposite to B & C blocks.It includes
School of Physics & Material Sciences, School of Chemistry & Biochemistry, School of Mathematics and School of Humanities and Social Sciences.It consists of physics and chemistry labs with well-equipped state of the art equipments.The block also contains faculty offices.

(viii) H-BLOCK
H-Block is a 3 storey academic block located in front of Aahar cafeteria and consists of mainly Electrical department labs and some electronics labs.ELC activities of many branches also take place here.

(ix) CSED Block
One of the newest additions to the portals of Thapar institute, the massive CSED block, surrounded by it’s elaborate gardens and lawns, flanks the eastern gate of the institute. It houses a multitude of labs and a wide expanse of air-conditioned sitting areas for the convenience of students in their study. 
"""

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



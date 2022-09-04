import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(MaterialApp(
  home: HostelhPage(),
));


class HostelhPage extends StatefulWidget {
  @override
  _HostelhPageState createState() => _HostelhPageState();
}
class _HostelhPageState extends State<HostelhPage>
{
  late Object jet;
  void initState() {
    jet = Object(fileName: "assets/3dobjects/Hostelh/Hostelh.obj");
    jet.position.setValues(50, 50, 50);

    jet.rotation.setValues(90, 0, 90);

    super.initState();
  }

  final double coverHeight = 100;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final bottom = coverHeight+380;
    return Scaffold(
      backgroundColor: Color(0xff1C203) ,
      body: Stack(
        clipBehavior: Clip.none,
        alignment :Alignment.center,
        children: [
          buildCoverImage(),
          Positioned (
            top : bottom,
            child : buildProfileImage(),


          ),
        ],
      ),
    );
  }
  Widget buildCoverImage() => Container(
    color: Color(0xff6379c9) ,
    child: Cube(
      onSceneCreated: (Scene scene) {
        scene.world.add(jet);
        scene.camera.zoom = 5;
      },
    ),
  );

}
Widget buildProfileImage()=>Container(

  child: Column(
    children: [
      Text(
        'HOSTEL H',


        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text(
        'Warden: Dr. Madhup Kumar Mittal',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text(
        'Caretaker: Dr. Amandeep Rishi',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No.: 9115608833',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Reception Contact: 0175-2393173',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Reception Contact: 9115611518 ',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Email id:-wardenh@thapar.edu',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),



    ],
  ),

);





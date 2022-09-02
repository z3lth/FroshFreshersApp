import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: HostelgPage(),
));


class HostelgPage extends StatefulWidget {
  @override
  _HostelgPageState createState() => _HostelgPageState();
}
class _HostelgPageState extends State<HostelgPage>
{
  late Object jet;
  void initState() {
    jet = Object(fileName: "assets/3dobjects/Hostelc/Hostelc.obj");
    jet.position.setValues(50, 50, 50);

    jet.rotation.setValues(90, 0, 90);

    super.initState();
  }

  final double coverHeight = 200;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final bottom = coverHeight+280;
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
        'HOSTEL G',


        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text(
        'Warden: Dr. Deepshika Tiwari',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No: 8288008149',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),

      Text('Email id:-wardeng@thapar.edu',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Caretaker: Mr. Mukhtiar Singh',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No.:  +91-9115608809',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('(Email id:-caretaker.g@thapar.edu)',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),

    ],
  ),

);





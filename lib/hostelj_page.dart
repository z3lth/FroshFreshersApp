import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(MaterialApp(
  home: HosteljPage(),
));


class HosteljPage extends StatefulWidget {
  @override
  _HosteljPageState createState() => _HosteljPageState();
}
class _HosteljPageState extends State<HosteljPage>
{
  late Object jet;
  void initState() {
    jet = Object(fileName: "assets/3dobjects/Hostelj/Jhostel.obj");
    jet.position.setValues(50, 50, 50);

    jet.rotation.setValues(0, 90, 0);

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
        'HOSTEL J',


        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text(
        'Warden: Dr. Munish Kansal',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No: 91156-08845 ',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
     /* Text(' 8288008173 (M)',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),*/
      Text('Email id:-wardenj@thapar.edu',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Caretaker: Mr Raj Kumar',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No:  08559010110',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Caretaker: Mr Maninder Singh',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No:  08288008178',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('(Email id:-caretaker.j@thapar.edu)',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),

    ],
  ),

);





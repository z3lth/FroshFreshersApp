import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(MaterialApp(
  home: HosteliPage(),
));


class HosteliPage extends StatefulWidget {
  @override
  _HosteliPageState createState() => _HosteliPageState();
}
class _HosteliPageState extends State<HosteliPage>
{
  late Object jet;
  void initState() {
    jet = Object(fileName: "assets/3dobjects/Hosteli/HOSTELi.obj");
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
        'HOSTEL I',


        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text(
        'Warden: Dr. Anju Bala',
        textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
      ),
      Text('Email id:-wardeni@thapar.edu',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),

      Text('Contact No.: 9855572517',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),



      Text('Caretaker: Ms.Jasvi Kaur',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No.:  +91-9115611519(M)',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Caretaker: Mr.Satnam Singh',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('Contact No.:  +91-9034266322',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),
      Text('(Email id:-caretaker.i@thapar.edu)',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
        ),
      ),

    ],
  ),

);





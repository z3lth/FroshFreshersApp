import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';

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
    jet = Object(fileName: "assets/3dobjects/Hostelj/JHostel.obj");
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
        'HOSTEL C',


        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 40
        ),
      ),
      Text(
        'Warden: Dr. Hari Shankar',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
      ),
      Text('Contact No.: 0175-2393173(H)',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
      ),
      Text(' 8288008173 (M)',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
      ),
      Text('Email id:-wardenc@thapar.edu',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
      ),
      Text('Caretaker: Mr Gurmeet Singh',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
      ),
      Text('Contact No.:  +91-9115608803',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
      ),
      Text('(Email id:-caretaker.c@thapar.edu)',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
      ),

    ],
  ),

);





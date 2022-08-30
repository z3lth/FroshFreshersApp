import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';

void main() => runApp(MaterialApp(
home: HostelmPage(),
));


class HostelmPage extends StatefulWidget {
  @override
  _HostelmPageState createState() => _HostelmPageState();
}
class _HostelmPageState extends State<HostelmPage>
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
 color: Color(0xff1C2031) ,
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
       'HOSTEL M',


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





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: CosPage(),
));


class CosPage extends StatefulWidget {
  @override
  _CosPageState createState() => _CosPageState();
}
class _CosPageState extends State<CosPage>
{
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight;
    return Scaffold(
      backgroundColor: Color(0xff121421),
      appBar: AppBar(
        title: Image.asset('assets/images/tietlogo3.png'),
        backgroundColor: Color(0xff1C2031),
        shadowColor: Colors.black,
      ) ,
      body: Stack(
        clipBehavior: Clip.none,
        alignment :Alignment.center,
        children: [
          buildCoverImage(),
          Positioned (
            top : top,
            child : buildProfileImage(),
          ),
        ],
      ),
    );
  }
  Widget buildCoverImage() => Container(
    color: Color(0xff121421),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child:   Image(
        image: NetworkImage('https://i.imgur.com/Du1bB1q.jpg'),
      ),
    ),

    width: double.infinity,
    height: coverHeight,



  );

  Widget buildProfileImage()=>Container(
    child: Column(
      children: [
        Text(
          'WATERBODY CAFÉ',


          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),

        Text('This Café is basically coordinated by Sodexo. And it requires the app named Hunger Box. It has brownies, pastries and other snacks.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
      ],
    ),

  );
}
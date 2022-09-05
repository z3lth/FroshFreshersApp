import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home:   AaharPage(),
));


class AaharPage extends StatefulWidget {
  @override
  _AaharPageState createState() => _AaharPageState();
}
class _AaharPageState extends State<AaharPage>
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
        image: NetworkImage('https://i.imgur.com/8ORIezj.jpg'),
      ),
    ),

    width: double.infinity,
    height: coverHeight,



  );

  Widget buildProfileImage()=>Container(
    child: Column(
      children: [
        Text(
          'AAHAR',


          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),

        Text('This is situated close to H block. It is famous for its mouth-watering shakes.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
       ],
    ),

  );
}
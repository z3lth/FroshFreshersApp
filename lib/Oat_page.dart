import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: OatPage(),
));


class OatPage extends StatefulWidget {
  @override
  _OatPageState createState() => _OatPageState();
}
class _OatPageState extends State<OatPage>
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
        image: AssetImage('assets/pics/jaggi.png'),
      ),
    ),

    width: double.infinity,
    height: coverHeight,



  );

  Widget buildProfileImage()=>Container(
    child: Column(
      children: [
        Text(
          'Oat',


          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),
        Text(
          '	CAFÉ HOUSE',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),
        Text('It provides a nice snack break for students',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        Text(' hanging out together.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        Text(' 	JUICE AND SHAKE BAR: ',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),
        Text('It provides fresh juices and flavourful shakes.  ',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        Text(' It also sells fruits at reasonable rates. ',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        Text('AMUL SHOP',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),
        Text('This shop is known for its exceptional cold',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        Text('coffee and tasty sandwiches.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 16.0,),
          ),
        ),
        Text('	SANDWICH SHOP',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),
        Text('They make delicious burgers, sandwiches, and hot dogs.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .4,fontSize: 14.0,),
          ),

        )],
    ),

  );
}
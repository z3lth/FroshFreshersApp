import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: JaggiPage(),
    ));


class JaggiPage extends StatefulWidget {
  @override
  _JaggiPageState createState() => _JaggiPageState();
  }
class _JaggiPageState extends State<JaggiPage>
{
final double coverHeight = 280;
final double profileHeight = 144;
@override
Widget build(BuildContext context) {
final top = coverHeight;
return Scaffold(
  backgroundColor: Color(0xff6379c9),
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
color: Color(0xff6379c9),
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
        'JAGGI',


        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 40
        ),
      ),
      Text(
        '	CAFÉ HOUSE',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30
        ),
      ),
      Text('It provides a nice snack break for students',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15
        ),
      ),
      Text(' hanging out together.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15
        ),
      ),
      Text(' 	JUICE AND SHAKE BAR: ',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30
        ),
      ),
      Text('It provides fresh juices and flavourful shakes.  ',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15
        ),
      ),
      Text(' It also sells fruits at reasonable rates. ',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15
        ),
      ),
      Text('AMUL SHOP',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30
        ),
      ),
      Text('This shop is known for its exceptional cold',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15
        ),
      ),
      Text('coffee and tasty sandwiches.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15
        ),
      ),
      Text('	SANDWICH SHOP',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30
        ),
      ),
      Text('They make delicious burgers, sandwiches, and hot dogs.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15
        ),
      ),

    ],
  ),

);
}
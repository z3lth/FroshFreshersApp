// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation/animation/fadeanimation.dart';
import 'package:meditation/constanst.dart';
import 'package:meditation/models/Mentor_p.dart';
import 'package:meditation/detail/detail_screen.dart';

class Mentor extends StatefulWidget {
  const Mentor({Key? key}) : super(key: key);

  @override
  _MentorState createState() => _MentorState();
}

class _MentorState extends State<Mentor> {
  final List categories = [
    'Nike',
    'Addidas',
    'Jordan',
    'Puma',
    'Gucci',
    'Tom Ford',
    'Koio',
  ];
  final List featured = [
    'New',
    'Featured',
    'Upcoming',
  ];
  int categoriescurrentIndex = 0;
  int featuredcurrentIndex = 1;
  int newcurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xff121421),
        appBar: AppBar(
          title: Image.asset('assets/images/tietlogo3.png'),
          backgroundColor: Color(0xff1C2031),
          shadowColor: Colors.black,
        ) ,
        body: SafeArea(
            child: ListView(
              physics: BouncingScrollPhysics(),

              children: [

                Text("Mentors",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30)),


                //topCategoriesWidget(width, height),
                SizedBox(
                  height: 10,
                ),
                // middleCategoriesWidget(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget1(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget2(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget3(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget4(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget5(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget6(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget7(width, height),SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget8(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget9(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget10(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget11(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget12(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget13(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget14(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget15(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget16(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget17(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget18(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget19(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget20(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget21(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget22(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget23(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget24(width, height),
                SizedBox(
                  height: 5,
                ),
                lastCategoriesWidget25(width, height),
                SizedBox(
                  height: 5,
                ),
                // lastCategoriesWidget15(width, height),
                // SizedBox(
                //   height: 5,
                // ),
                // lastCategoriesWidget27(width, height),
                // SizedBox(
                //   height: 5,
                ],

            )
        )
    );


  }

  lastCategoriesWidget(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,

          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snkModels[index];

            return GestureDetector(

              child: Container(
                // color: Colors.blue,
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        //child: RotationTransition(
                        //turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width /2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                            image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,


                           ),
                          ),
                        ),
                      ),

                    ),

                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
  lastCategoriesWidget1(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk1Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        // child: RotationTransition(
                        //   turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width / 2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                           child: Image(
                            image: AssetImage(model.imgAddress),
                            fit: BoxFit.fill,
                          ),
                          ),
                        ),
                      ),

                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
  lastCategoriesWidget2(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk2Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        // child: RotationTransition(
                        //   turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width / 2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(model.imgAddress),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ),
                      ),

                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget3(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk3Models[index];

            return GestureDetector(


              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        // child: RotationTransition(
                        //   turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width / 2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(model.imgAddress),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget4(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk4Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        // child: RotationTransition(
                        //   turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width / 2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(model.imgAddress),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget5(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk5Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        // child: RotationTransition(
                        //   turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width / 2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(model.imgAddress),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ),
                      ),

                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget6(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk6Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        // child: RotationTransition(
                        //   turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width / 2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(model.imgAddress),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ),
                      ),

                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget7(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk7Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,
                        // child: RotationTransition(
                        //   turns: AlwaysStoppedAnimation(-15 / 360),
                        child: Container(
                          width: width / 2.7,
                          height: height / 7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                          ),
                        ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget8(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk8Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),
                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget9(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk9Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),
                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget10(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk10Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget11(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk11Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),
                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget12(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk12Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(

                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,



                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
  lastCategoriesWidget13(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk13Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
  lastCategoriesWidget14(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk14Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              height: 100,
                              width: width/5,
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
  lastCategoriesWidget15(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk15Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
  lastCategoriesWidget16(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk16Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget22(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk22Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget17(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk17Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget18(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk18Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget19(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk19Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget20(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk20Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget21(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk21Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget23(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk23Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(

                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget24(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk24Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),
                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  } lastCategoriesWidget25(width, height) {
    return Container(
      width: width,
      height: height/4,
      child: ListView.builder(
          itemCount:2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = snk25Models[index];

            return GestureDetector(

              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(141, 147, 171, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: FadeAnimation(
                        delay: 1.5,

                          child: Container(
                            width: width / 2.7,
                            height: height / 7.5,

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),

                            child: Image(
                              image: AssetImage(model.imgAddress),
                              fit: BoxFit.fill,

                            ),
                            ),
                          ),

                      ),
                    ),
                    Positioned(
                      top: 135,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name} ${model.model}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.branch}",
                              style: TextStyle(
                                color: darkTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:meditation/models/Mentor_p.dart';
import 'package:meditation/detail/widget/appbar.dart';
import 'package:meditation/detail/widget/body.dart';
import '../../constanst.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatelessWidget {
  Models model;
  DetailScreen({required this.model});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
          extendBodyBehindAppBar: true,
          backgroundColor: backgroundColor,
          appBar: customAppBarDe(
            context,
          ),
          body: BodyDe(
            model: model,
          )),
    );
  }
}

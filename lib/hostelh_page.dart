import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import '';

class HostelhPage extends StatefulWidget {
  @override
  _HostelhPageState createState() => _HostelhPageState();
}

class _HostelhPageState extends State<HostelhPage> {
  late Object jet;
  late Object shark;
  @override
  void initState() {
    jet = Object(fileName: "assets/3dobjects/Hostelc/Hostelc.obj");
    shark = Object(fileName: "assets/3dobjects/Hostele/HOSTEL.obj");
    shark.rotation.setValues(0,90,0);

    jet.rotation.setValues(0, 90, 0);
    shark.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Flutter 3D"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.yellow,
        child: Column(
          children: [
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(shark);
                  scene.camera.zoom = 5;
                },
              ),
            ),


            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(jet);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

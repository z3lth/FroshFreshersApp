import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import '';

class HosteljPage extends StatefulWidget {
  @override
  _HosteljPageState createState() => _HosteljPageState();
}

class _HosteljPageState extends State<HosteljPage> {
  late Object jet;
  late Object shark;
  @override
  void initState() {
    jet = Object(fileName: "assets/3dobjects/Hostelc/Hostelc.obj");
    shark = Object(fileName: "assets/3dobjects/Hostele/HOSTEL.obj");
    shark.rotation.setValues(0, 90, 90);
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
        child: Column(
          children: [
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(shark);
                  scene.camera.zoom = 10;
                },
              ),
            ),
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(jet);
                  scene.camera.zoom = 10;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

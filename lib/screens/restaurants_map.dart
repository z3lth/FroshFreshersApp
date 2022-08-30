import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
// import 'package:mapbox_navigation/constants/restaurants.dart';
import '../constants/restaurants.dart';
// import 'package:mapbox_navigation/helpers/commons.dart';
import '../helpers/commons.dart';
import '../helpers/shared_prefs.dart';
// import 'package:mapbox_navigation/helpers/shared_prefs.dart';
import '../widgets/carousel_card.dart';
// import 'package:mapbox_navigation/widgets/carousel_card.dart';

class RestaurantsMap extends StatefulWidget {
  const RestaurantsMap({Key? key}) : super(key: key);

  @override
  State<RestaurantsMap> createState() => _RestaurantsMapState();
}

class _RestaurantsMapState extends State<RestaurantsMap> {
  // Mapbox related

  LatLng latLng = getLatLngFromSharedPrefs();
  late CameraPosition _initialCameraPosition;
  late MapboxMapController controller;
  late List<CameraPosition> _kRestaurantsList;
  List<Map> carouselData = [];

  // Carousel related

  int pageIndex = 0;
  late List<Widget> carouselItems;

  @override
  void initState() {
    super.initState();
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);

    // Calculate the distance and time from data in SharedPreferences

    for (int index = 0; index < restaurants.length; index++) {
      num distance = getDistanceFromSharedPrefs(index) / 1000;
      num duration = getDurationFromSharedPrefs(index) / 60;
      carouselData
          .add({'index': index, 'distance': distance, 'duration': duration});
    }
    carouselData.sort((a, b) => a['duration'] < b['duration'] ? 0 : 1);

    // Generate the list of carousel widgets
    carouselItems = List<Widget>.generate(
        restaurants.length,
        (index) => carouselCard(carouselData[index]['index'],
            carouselData[index]['distance'], carouselData[index]['duration']));

    // initialize map symbols in the same order as carousel widgets
    _kRestaurantsList = List<CameraPosition>.generate(
        restaurants.length,
        (index) => CameraPosition(
            target: getLatLngFromRestaurantData(carouselData[index]['index'],
                zoom: 15)));
  }

  _addSourceAndLineLayer(int index, bool removeLayer) async {
    // Can animate camera to focus on the item
    controller.animateCamera(
        CameraUpdate.newCameraPosition(_kRestaurantsList[index]));

    // Add a polyLine between source and destination

    Map geometry = getGeometryFromSharedPrefs(carouselData[index]['index']);
    final _fills = {
      "type": "Feature Collection",
      "features": [
        {
          "type": "Feature",
          "id": 0,
          "properties": <String, dynamic>{},
          'geometry': geometry,
        }
      ]
    };

    // Remove lineLayer and source if it exists

    if (removeLayer == true) {
      await controller.removeLayer("lines");
      await controller.removeSource("fills");
    }

    // Add new source and lineLayer

    await controller.addSource("fills", GeojsonSourceProperties(data: _fills));
    await controller.addLineLayer(
        "fills",
        "lines ",
        LineLayerProperties(
            lineColor: Colors.green.toHexStringRGB(),
            lineCap: "round",
            lineJoin: "round",
            lineWidth: 2));
  }

  _onMapCreated(MapboxMapController controller) async {
    this.controller = controller;
  }

  _onStyleLoadedCallback() async {
    for (CameraPosition _kRestaurantsList in _kRestaurantsList) {
      await controller.addSymbol(SymbolOptions(
        geometry: _kRestaurantsList.target,
        iconSize: 0.75,
        iconImage: "assets/icon/ping.png",
      ));
    }
    _addSourceAndLineLayer(0, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps'),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                  height: 100,
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    setState(() {
                      pageIndex = index;
                    });
                    _addSourceAndLineLayer(index, true);
                  })),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: MapboxMap(
              initialCameraPosition: _initialCameraPosition,
              accessToken:
                  "pk.eyJ1IjoiejNsdGgiLCJhIjoiY2w1YXo0bGUxMDJtMzNrcGVydDF1dDhpbiJ9.7ZvLkrbLmiCBk7tayL3nyw",
              onMapCreated: _onMapCreated,
              onStyleLoadedCallback: _onStyleLoadedCallback,
              myLocationEnabled: true,
              myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
              minMaxZoomPreference: const MinMaxZoomPreference(14, 17),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.animateCamera(
              CameraUpdate.newCameraPosition(_initialCameraPosition));
        },
        child: const Icon(Icons.my_location),
      ),
    );
  }
}

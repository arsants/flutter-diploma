import 'dart:async';
import 'package:katai/features/map/presentation/bloc/map_cubit.dart';
import 'package:katai/features/map/presentation/pages/panels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> with TickerProviderStateMixin {
  late Future getTracks;
  late List<Widget> _panelWidgets;

  final Set<Marker> _markers = {};
  late final PanelController _panelController = PanelController();
  late final TabController _tabController =
      TabController(vsync: this, length: 3);
  late StreamSubscription<LocationData> _sub;
  bool isEventSet = false;

  @override
  Future<void> dispose() async {
    await _sub.cancel();
    _panelController.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final Location location = Location();
    _sub = location.onLocationChanged.listen((data) async {
      context
          .read<MapCubit>()
          .updateCurrentLocation(LatLng(data.latitude!, data.longitude!));
    });
  }

  final Completer<GoogleMapController> _controller = Completer();
  final Set<Polyline> _polylines = {};
  static const CameraPosition _kYekt = CameraPosition(
    target: LatLng(56.827119, 60.668476),
    zoom: 10,
  );

  Future<void> _currentLocation() async {
    final GoogleMapController controller = await _controller.future;
    final LocationData currentLocation = await Location().getLocation();

    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(currentLocation.latitude!, currentLocation.longitude!),
        zoom: 15.0,
      ),
    ));
  }

  Future<void> _zoom(value) async {
    final GoogleMapController controller = await _controller.future;
    final LocationData currentLocation = await Location().getLocation();
    var currentZoomLevel = await controller.getZoomLevel();

    currentZoomLevel = currentZoomLevel + value;
    if (currentZoomLevel < 0) currentZoomLevel = 0;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(currentLocation.latitude!, currentLocation.longitude!),
          zoom: currentZoomLevel,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _panelWidgets = [
      InitialTab(
          panelController: _panelController, tabController: _tabController),
      UsersTab(
          panelController: _panelController, tabController: _tabController),
      EventsTab(
          panelController: _panelController, tabController: _tabController),
    ];

    return Stack(
      fit: StackFit.expand,
      children: [
        GoogleMap(
          onTap: (_) {
            _tabController.animateTo(0);
            _panelController.close();
          },
          initialCameraPosition: _kYekt,
          markers: _markers,
          compassEnabled: false,
          zoomControlsEnabled: false,
          polylines: _polylines,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 100, 8.0, 8.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    _panelController.isPanelOpen
                        ? _panelController.close()
                        : _panelController.open();
                  },
                  child: const Icon(
                    Icons.filter,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () async => _zoom(2.0),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 100),
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () async => _zoom(-2.0),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: _currentLocation,
                  child: const Icon(
                    Icons.location_on,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
        SlidingUpPanel(
          controller: _panelController,
          minHeight: 0,
          maxHeight: MediaQuery.of(context).size.height / 3,
          panelBuilder: (_panelController) {
            return Scaffold(
              body: TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: _panelWidgets),
            );
          },
        )
      ],
    );
  }
}

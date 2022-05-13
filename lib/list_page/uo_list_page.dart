import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class UOListPage extends StatefulWidget {
  UOListPage({Key key}) : super(key: key);

  static const String routeName = '/list_page';

  @override
  State<UOListPage> createState() => _UOListPageState();
}

class _UOListPageState extends State<UOListPage> {
  List<Map<String, dynamic>> _cameras = [];

  static const platform = const MethodChannel('uocamera');

  void getCameraList() async {
    var cameras = await platform.invokeMethod('getCameraList');
    // var camera = cameras[0];
    setState(() {
      cameras.forEach((camera) {
        _cameras.add(camera as Map<String, dynamic>);
      });
    });
  }

  void getCameraList2() async {
    rootBundle.loadString('lib/model/camera_list.json').then((value) {
      var cameras = json.decode(value);
      // var camera = cameras[0];

      setState(() {
        cameras.forEach((camera) {
          _cameras.add(camera as Map<String, dynamic>);
        });
      });
    });
  }

  @override
  void initState() {
    getCameraList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("摄像头列表"),
        ),
        body: ListView.builder(
            itemCount: _cameras.length,
            itemBuilder: (BuildContext context, int position) {
              return UOCameraCell(
                camera: _cameras[position],
              );
            }));
  }
}

class UOCameraCell extends StatelessWidget {
  final Map<String, dynamic> camera;
  const UOCameraCell({this.camera});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        color: Colors.orange,
        child: Column(
          children: [
            buildInfo(),
            Image.network(
              camera["iconUrlReal"],
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  Widget buildInfo() {
    print("buildInfo: ${camera["iconUrlReal"]}");
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 80,
          child: Image.network(
            camera["iconUrlV2"],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(camera["deviceCustomName"],
              style: TextStyle(fontSize: 20, color: Colors.black87)),
          SizedBox(height: 5),
          buildStatus(),
        ]),
      ],
    );
  }

  Widget buildStatus() {
    bool isOnline = camera["online"] == "1";
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: isOnline ? Colors.green : Colors.grey,
          radius: 6,
        ),
        SizedBox(
          width: 10,
        ),
        Text(isOnline ? "在线" : "离线",
            style: TextStyle(
                fontSize: 12, color: isOnline ? Colors.green : Colors.grey)),
      ],
    );
  }
}

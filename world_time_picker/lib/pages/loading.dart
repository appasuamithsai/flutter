import 'package:flutter/material.dart';
import 'package:world_time_picker/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading...";

  void setUpWorldTime() async {
    WorldTime obj = WorldTime(
        location: "Kolkata", url: "Asia/Kolkata", flag: "germany.png");
    await obj.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      'location': obj.location,
      'flag': obj.flag,
      'time': obj.time,
      'isDayTime': obj.isDayTime
    });
    // setState( () {
    //   time=obj.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child: SpinKitFadingCube(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}

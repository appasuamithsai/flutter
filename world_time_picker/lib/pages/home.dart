import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments;
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: SafeArea(
                child: Column(
              children: <Widget>[
                TextButton.icon(
                    onPressed: () async {
                      dynamic result =
                          await Navigator.pushNamed(context, "/location");
                      setState(() {
                        data = {
                          'location': result['location'],
                          'flag': result['flag'],
                          'time': result['time'],
                          'isDayTime': result['isDayTime']
                        };
                      });
                    },
                    icon: const Icon(
                      Icons.edit_location,
                      color: Colors.grey,
                    ),
                    label: const Text("Edit Location",
                        style: TextStyle(color: Colors.grey))),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 28,
                            letterSpacing: 2,
                            color: Colors.white),
                        child: Text(data['location']))
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DefaultTextStyle(
                    style: const TextStyle(fontSize: 66.0, color: Colors.white),
                    child: Text(data['time']))
              ],
            )),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hii Amith!!!"),
        backgroundColor: Colors.red[600],
      ),
      body:
      Row(
        children: <Widget>[
          const Expanded(
            flex: 5,
            child: Image(
              image: NetworkImage("https://www.cricbuzz.com/a/img/v1/152x152/i1/c170953/moeen-ali.jpg"),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: const Text("1"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.pinkAccent,
              child: const Text("2"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.amber,
              child: const Text("3"),
            ),
          )
        ],
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: <Widget>[
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         const Text("Hello world!!!"),
      //         Container(
      //           color: Colors.cyan,
      //           padding: EdgeInsets.all(20.0),
      //           child: Text("Weclome"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: TextButton(onPressed: () {}, child: const Text("CLick me!!")),
      //         )
      //       ],
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(20.0),
      //       color: Colors.cyan,
      //       child: const Text("One"),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(30.0),
      //       color: Colors.pinkAccent,
      //       child: const Text("Two"),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(40.0),
      //       color: Colors.amber,
      //       child: const Text("Three"),
      //     )
      //   ],
      // ),

      // const Padding(padding: EdgeInsets.all(20.0),
      //     child: Text("Hello"))
      // Container(
      //   padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 50.0),
      //   margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
      //   color: Colors.grey[600],
      //   child: const Text("Hello"),
      // ),
      // Center(
      //     child: ElevatedButton.icon(
      //         onPressed: () {},
      //         icon: const Icon(Icons.mail),
      //         label: const Text('Mail')
      //     )
      //     // FlatButton(
      //     //   onPressed: () {},
      //     // )
      //     // Icon(
      //     //   Icons.airport_shuttle,
      //     //   color: Colors.lightBlue,
      //     //   size:50.0
      //     // )
      //     // Image.asset("assets/placeholder.png"),
      //     ),

      //   Image(
      // image: AssetImage("assets/placeholder.png"),
      // image: NetworkImage('https://www.cricbuzz.com/a/img/v1/152x152/i1/c170953/moeen-ali.jpg');
      // Text(
      //   "Welcome Body",
      //   style: TextStyle(
      //       fontSize: 20.0,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.grey[600],
      //       letterSpacing: 2.0,
      //       fontFamily: 'IndieFlower'
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text("Click"),
      ),
    );
  }
}

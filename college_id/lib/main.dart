import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:CollegeIdCard() ,
  ));
}
class CollegeIdCard extends StatelessWidget {
  const CollegeIdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("College Id Card",),
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/photo.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            const Text(
              "NAME",
              style: TextStyle(
                letterSpacing: 2.0,
                color:Colors.grey
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Amith Sai",
              style: TextStyle(
                  letterSpacing: 2.0,
                  color:Colors.amberAccent[200],
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              "DEPARTMENT",
              style: TextStyle(
                  letterSpacing: 2.0,
                  color:Colors.grey
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "CSE",
              style: TextStyle(
                  letterSpacing: 2.0,
                  color:Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              "COLLEGE ID",
              style: TextStyle(
                  letterSpacing: 2.0,
                  color:Colors.grey
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "2451-18-733-146",
              style: TextStyle(
                  letterSpacing: 2.0,
                  color:Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                  'appasuamithsai@gmail.com',
                  style: TextStyle(
                      letterSpacing: 1.0,
                      color:Colors.grey[400],
                      fontSize: 18.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

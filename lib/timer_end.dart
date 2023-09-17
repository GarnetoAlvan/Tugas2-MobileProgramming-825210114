import 'timer.dart';
import 'package:flutter/material.dart';

class ClockEnd extends StatefulWidget {
  @override
  State createState() => EndState();
}

class EndState extends State<ClockEnd> {

  void _movetocountdown(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Clock()),
    );
  }


  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Time is Up!',
                    style: TextStyle(color: Colors.red, fontSize: 18, )),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: _movetocountdown, child: Text("Back"))
              ],
            )
          ],
        )
    );
  }
}
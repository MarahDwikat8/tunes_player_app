import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class Tuneview extends StatelessWidget {
  const Tuneview({super.key});

  final List<TuneModel> tunes =const [
    TuneModel(color: Color(0xffF44336), sound: 'assets/note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'assets/note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),

    TuneModel(color: Color(0xff4CAF50), sound: 'assets/note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'assets/note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'assets/note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'assets/note7.wav'),
   

   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
        //getTuneItems(),
        //[
        // ///1
        // TuneItem(
        //   color: Colors.red,
        // ),

        // ///2
        // TuneItem(
        //   color: Colors.orange,
        // ),

        // ///3
        // TuneItem(
        //   color: Colors.yellow,
        // ),

        // ///4
        // TuneItem(
        //   color: Colors.green,
        // ),

        // ///5
        // TuneItem(
        //   color: Color.fromARGB(255, 8, 85, 69),
        // ),

        // ///6
        // TuneItem(
        //   color: Colors.blue,
        // ),

        // ///7
        // TuneItem(
        //   color: Colors.purple,
        // ),

        // ],
      ),
    );
  }
  // List<TuneItem> getTuneItems(){
  //   List<TuneItem>items=[];
  //   for(var color in tuneColors){
  //     items.add(TuneItem(color: color));
  //   }

  //   return items;
  // }
}

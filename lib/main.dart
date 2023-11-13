import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Level(),
    );
  }
}

class Level extends StatefulWidget {
  const Level({super.key});
  @override
  State<Level> createState() => _LevelState();
}

List verse = [
  {"line1": "سورة الاخلاص ", "line2": "بسم الله الرحمن الرحيم"},
  {"line1": "قل هو الله احد", "line2": "الله الصمد"},
  {"line1": "لم يلد ولم يولد", "line2": "ولم يكن له كفوا احد "},
  {"line1": " صدق الله العظيم ", "line2": "صلى على النبى "},
  {"line1": "سبحان الله", "line2": "لا اله الا الله"},
  {"line1": "الحمد لله", "line2": "الله واكبر "}
];
int Num = 0;

changeIndex() {

}

changeIndex2() {

}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 242),
        appBar: AppBar(
            centerTitle: true,
            title: Text("تذكر",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700)),
            backgroundColor: Color.fromARGB(255, 248, 213, 107)),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(verse[Num]["line1"],
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
            SizedBox(height: 20),
            Text(verse[Num]["line2"],
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
            SizedBox(height: 15),
            Row(
              children: [
                FloatingActionButton(
                    onPressed: () {
                       setState(() {
   if (Num == verse.length - 1) {
     Num = 0;
  } else {
     Num++;
   }
 });
                    },
                    child: Icon(Icons.arrow_circle_left,
                        size: 30, color: Colors.black),
                    backgroundColor: const Color.fromARGB(255, 250, 188, 3)),
                FloatingActionButton(
                    onPressed: () {
                        setState(() {
     if (Num == 0) {
       Num = verse.length - 1;
     } else {
       Num--;
     }
   });
                    },
                    child: Icon(Icons.arrow_circle_right,
                        size: 30, color: Colors.black),
                    backgroundColor: const Color.fromARGB(255, 250, 188, 3)),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            SizedBox(height: 200),
          ]),
        ),
      ),
    );
  }
}

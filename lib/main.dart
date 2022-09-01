import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uitask1/widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'I Identify as',
      home: MyHomePage(title: 'I Identify as'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected_Index = -1;
  List<String> i = [
    "Straight Male",
    "Straight Female",
    "Lesbian",
    "Gay",
    "Bisexual",
    "Transgender",
    "Intersex",
    "Queer",
    "Non-Binary"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(30.0),
              child: const Text(
                "I Identify as",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const Padding(padding: EdgeInsets.all(40.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
                color: selected_Index == 0
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 0 ? Colors.white : Colors.black,
                text: "Straight Male",
                onTap: () {
                  setState(() {
                    if (selected_Index == 0) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 0;
                    }
                  });
                }),
            Button(
                color: selected_Index == 1
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 1 ? Colors.white : Colors.black,
                text: "Straight Female",
                onTap: () {
                  setState(() {
                    if (selected_Index == 1) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 1;
                    }
                  });
                }),
          ],
        ),
        const Padding(padding: EdgeInsets.all(20.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
                color: selected_Index == 2
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 2 ? Colors.white : Colors.black,
                text: "Lesbian",
                onTap: () {
                  setState(() {
                    if (selected_Index == 2) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 2;
                    }
                  });
                }),
            Button(
                color: selected_Index == 3
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 3 ? Colors.white : Colors.black,
                text: "Gay",
                onTap: () {
                  setState(() {
                    if (selected_Index == 3) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 3;
                    }
                  });
                }),
          ],
        ),
        const Padding(padding: EdgeInsets.all(20.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
                color: selected_Index == 4
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 4 ? Colors.white : Colors.black,
                text: "Bisexual",
                onTap: () {
                  setState(() {
                    if (selected_Index == 4) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 4;
                    }
                  });
                }),
            Button(
                color: selected_Index == 5
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 5 ? Colors.white : Colors.black,
                text: "Transgender",
                onTap: () {
                  setState(() {
                    if (selected_Index == 5) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 5;
                    }
                  });
                }),
          ],
        ),
        const Padding(padding: EdgeInsets.all(20.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
                color: selected_Index == 6
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 6 ? Colors.white : Colors.black,
                text: "Intersex",
                onTap: () {
                  setState(() {
                    if (selected_Index == 6) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 6;
                    }
                  });
                }),
            Button(
                color: selected_Index == 7
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 7 ? Colors.white : Colors.black,
                text: "Queer",
                onTap: () {
                  setState(() {
                    if (selected_Index == 7) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 7;
                    }
                  });
                }),
          ],
        ),
        const Padding(padding: EdgeInsets.all(20.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
                color: selected_Index == 8
                    ? const Color(0xff1ECEA5)
                    : Colors.white,
                textColor: selected_Index == 8 ? Colors.white : Colors.black,
                text: "Non-Binary",
                onTap: () {
                  setState(() {
                    if (selected_Index == 8) {
                      selected_Index = -1;
                    } else {
                      selected_Index = 8;
                    }
                  });
                }),
          ],
        ),
        const Padding(padding: EdgeInsets.all(40.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  var p = selected_Index;
                  if (p == -1) {
                    Fluttertoast.showToast(
                        msg: "Please Select One Option  ",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  } else {
                    Fluttertoast.showToast(
                        msg: i[p],
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                });
              },
              child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: selected_Index != -1
                          ? const Color(0xff1ECEA5)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(width: 2.0)),
                  child: Text(
                    "Continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: selected_Index != -1 ? Colors.white : Colors.black,
                    ),
                  )),
            )
          ],
        )
      ]),
    );
  }
}

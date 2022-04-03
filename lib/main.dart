import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_web/variables.dart';
import 'start.dart';
import 'onas.dart';
import 'zabiegi.dart';
import 'mediaonas.dart';
import 'kontakt.dart';

void startPage() {
  Expanded(
    flex: 6,
    child: Container(
      color: Colors.yellow,
      child: const Text(" to jest z osobnej funkcji"),
      width: double.infinity,
    ),
  );
}


void main() {
  var tekst = "To jest Start";

  runApp(const MojaApp());
}

class MojaApp extends StatefulWidget {
  const MojaApp({Key? key}) : super(key: key);
  @override
  _MojaAppState createState() =>  _MojaAppState();
}


class _MojaAppState extends State<MojaApp> {
  void tekst = "START";


  //String get tekst => 'mirek';
  int choose = 1;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 1000,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              // color: Colors.white,
                              // child: const Text('gorna polka'),
                              width: 400.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/logo.png"),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: Container(
                              // color: Colors.white,
                              child: const Text('PODOLOGMED\nZłota 23,\n25-015 Kielce\ntel.: 661 908 747',
                                style: TextStyle(height: 1, fontSize: 20),
                              ),
                              //width: double.infinity,

                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            // padding: EdgeInsets.all(5.0),

                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      n = 'start';
                                    });
                                  },
                                  child: const Text('START'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      n = 'onas';
                                    });
                                  },
                                  child: const Text('O NAS'),
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.all(4.0),
                              //   child: ElevatedButton(
                              //     onPressed: () {
                              //       setState(() {
                              //         n = 'zabiegi';
                              //       });
                              //     },
                              //     child: const Text('ZABIEGI'),
                              //   ),
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.all(4.0),
                              //   child: ElevatedButton(
                              //     onPressed: () {
                              //       setState(() {
                              //         n = 'mediaonas';
                              //       });
                              //     },
                              //     child: const Text('MEDIA O NAS'),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      n = 'kontakt';
                                    });
                                  },
                                  child: const Text('KONTAKT'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        //color: Colors.yellow,
                        child:  page(n),
                        width: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: page(3),
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

}

page(var choose) {
  if(choose == 'start'){
    return pageStart();
  } else if (choose == 'onas') {
    return pageOnas();// statement(s) will execute if the Boolean expression is false.
  }
  else if (choose == 'zabiegi') {
    return pageZabiegi();// statement(s) will execute if the Boolean expression is false.
  }
  else if (choose == 'mediaonas') {
    return pageMediaonas();// statement(s) will execute if the Boolean expression is false.
  }
  else if (choose == 'kontakt') {
    return pageKontakt();// statement(s) will execute if the Boolean expression is false.
  }
}


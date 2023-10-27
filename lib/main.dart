import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator',
      home: MyHomePage(title: 'Caculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController myController = TextEditingController();
  double? number1;
  double? number2;
  int? id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Calculator"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 60,
                      child: TextField(
                        style:
                            const TextStyle(fontSize: 32, color: Colors.black),
                        decoration:
                            const InputDecoration.collapsed(hintText: '0'),
                        enabled: false,
                        controller: myController,
                        textAlign: TextAlign.end,
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "1";
                        },
                        child: const Text("1"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "2";
                        },
                        child: const Text("2"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "3";
                        },
                        child: const Text("3"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "4";
                        },
                        child: const Text("4"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "5";
                        },
                        child: const Text("5"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "6";
                        },
                        child: const Text("6"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "7";
                        },
                        child: const Text("7"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "8";
                        },
                        child: const Text("8"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "9";
                        },
                        child: const Text("9"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + ".";
                        },
                        child: const Text("."),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = myController.text + "0";
                        },
                        child: const Text("0"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          if (myController.text != "") {
                            number1 = double.tryParse(myController.text);
                            myController.text =
                                (number1! * number1!).toString();
                          }
                        },
                        child: const Text("x²"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          number1 = double.tryParse(myController.text);
                          myController.text = "";
                          id = 2;
                        },
                        child: const Text("x"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          number1 = double.tryParse(myController.text);
                          myController.text = "";
                          id = 1;
                        },
                        child: const Text("+"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          number1 = double.tryParse(myController.text);
                          myController.text = "";
                          id = 3;
                        },
                        child: const Text("-"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          number1 = double.tryParse(myController.text);
                          myController.text = "";
                          id = 4;
                        },
                        child: const Text("/"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          if (number1 != null && number2 != null) {
                            switch (id) {
                              case 1:
                                number2 = double.tryParse(myController.text);
                                number1 = number1! + number2!;
                                myController.text = number1!.toInt().toString();
                              case 2:
                                number2 = double.tryParse(myController.text);
                                number1 = number1! * number2!;
                                myController.text = number1!.toString();
                              case 3:
                                number2 = double.tryParse(myController.text);
                                number1 = number1! - number2!;
                                myController.text = number1!.toInt().toString();
                              case 4:
                                number2 = double.tryParse(myController.text);
                                number1 = number1! / number2!;
                                myController.text = number1!.toString();
                            }
                          } else {
                            if (number1 == null) {
                              number1 = 0;
                              switch (id) {
                                case 1:
                                  number2 = double.tryParse(myController.text);
                                  number1 = number1! + number2!;
                                  myController.text =
                                      number1!.toInt().toString();
                                case 2:
                                  number2 = double.tryParse(myController.text);
                                  number1 = number1! * number2!;
                                  myController.text = number1!.toString();
                                case 3:
                                  number2 = double.tryParse(myController.text);
                                  number1 = number1! - number2!;
                                  myController.text =
                                      number1!.toInt().toString();
                                case 4:
                                  number2 = double.tryParse(myController.text);
                                  number1 = number1! / number2!;
                                  myController.text = number1!.toString();
                              }
                            }
                            if (number2 == null) {
                              number2 = 0;
                              switch (id) {
                                case 1:
                                  number1 = number1! + number2!;
                                  myController.text =
                                      number1!.toInt().toString();
                                case 2:
                                  number1 = number1! * number2!;
                                  myController.text = number1!.toString();
                                case 3:
                                  number1 = number1! - number2!;
                                  myController.text =
                                      number1!.toInt().toString();
                                case 4:
                                  number1 = number1! / number2!;
                                  myController.text = number1!.toString();
                              }
                            }
                          }
                        },
                        child: const Text("="),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        onPressed: () {
                          myController.text = "";
                        },
                        child: const Text("C"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

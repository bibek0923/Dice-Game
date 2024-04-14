import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_dice/main_screen.dart';

class roll_dice extends StatefulWidget {
  roll_dice({super.key});

  @override
  State<roll_dice> createState() => _roll_diceState();
}

class _roll_diceState extends State<roll_dice> {
  var guess = 0;
  int numb = 1;
  double turns = 0.0;
  bool onp1 = false;
  bool onp2 = false;
  bool onp3 = false;
  bool onp4 = false;
  bool onp5 = false;
  bool onp6 = false;

  void dice_Roll() {
    setState(() {
      numb = Random().nextInt(6) + 1;

      //  print(numb);
      turns += 1 / 4;
   
    });
    Future.delayed(Duration(seconds: 2), () {
      if (guess == numb) {
        showDialog(
            barrierDismissible: true,
            context: context,
            builder: (ctx) {
              return AlertDialog(
                backgroundColor: const Color.fromARGB(255, 109, 177, 111),
                alignment: Alignment.center,
                elevation: 50.0,
                title: Text("Your guess is correct!  "),
                content: Text("Do you want to play again?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        onp1 = false;
                        onp2 = false;
                         onp3 = false;
                          onp4 = false;
                           onp5 = false;
                      onp6 = false;

                      });
                      Navigator.of(context).pop();
                    },
                    child: Text("Yes", style: TextStyle(color: Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return MainScreen();
                          },
                        ),
                      );
                    },
                    child: Text("No", style: TextStyle(color: Colors.black)),
                  ),
                ],
              );
            });
      } else {
        showDialog(
          barrierDismissible: true,
          context: context,
          builder: (ctx) => AlertDialog(
            backgroundColor: Color.fromARGB(255, 212, 140, 140),
            alignment: Alignment.center,
            elevation: 50.0,
            title: Text("Your guess is incorrect!  "),
            content: Text("Do you want to play again?"),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {
                    onp1 = false;
                    onp2 = false;
                     onp3 = false;
                    onp4 = false;
                     onp5 = false;
                       onp6 = false;

                  });
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Yes",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return MainScreen();
                      },
                    ),
                  );
                },
                child: Text("No", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        );
      }
      print(guess);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Game"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "Make your guess !",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  guess = 1;
                  setState(() {
                    onp1 = !onp1;
                  });
                },
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
                style: onp1
                    ? ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        ),
                      )
                    : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.amber,
                        ),
                      ),
              ),
              TextButton(
                onPressed: () {
                  guess = 2;
                  setState(() {
                    onp2 = !onp2;
                  });
                },
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
                style: onp2
                    ? ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        ),
                      )
                    : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.amber,
                        ),
                      ),
              ),
              TextButton(
                onPressed: () {
                  guess = 3;
                  setState(() {
                    onp3 = !onp3;
                  });
                },
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
                style: onp3
                    ? ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        ),
                      )
                    : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.amber,
                        ),
                      ),
              ),
              TextButton(
                onPressed: () {
                  guess = 4;
                  setState(() {
                    onp4 = !onp4;
                  });
                },
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
                style: onp4
                    ? ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        ),
                      )
                    : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.amber,
                        ),
                      ),
              ),
              TextButton(
                onPressed: () {
                  guess = 5;
                  setState(() {
                    onp5 = !onp5;
                  });
                },
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
                style: onp5
                    ? ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        ),
                      )
                    : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.amber,
                        ),
                      ),
              ),
              TextButton(
                onPressed: () {
                  guess = 6;
                  setState(() {
                    onp6 = !onp6;
                  });
                },
                child: Text(
                  '6',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
                style: onp6
                    ? ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        ),
                      )
                    : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.amber,
                        ),
                      ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 20,
          ),
          AnimatedRotation(
            turns: turns,
            duration: Duration(seconds: 1),
            curve: Curves.linear,
            child: Image.asset(
              "Assets/dice-$numb.png",
              width: 200,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.amber),
              elevation: MaterialStatePropertyAll(5),
            ),
            onPressed: () {
              dice_Roll();
            },
            child: const Text(
              'roll',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

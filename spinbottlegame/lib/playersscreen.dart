import 'package:flutter/material.dart';
import 'dart:math';

class PlayerListScreen extends StatefulWidget {
  final List<String> allplayers;
  final String bottleImagePath;

  PlayerListScreen({required this.allplayers, required this.bottleImagePath});

  @override
  _PlayerListScreenState createState() => _PlayerListScreenState();
}

class _PlayerListScreenState extends State<PlayerListScreen> with TickerProviderStateMixin {
  var random = Random();

  late AnimationController _animationController;

  double getRandom() {
    return random.nextDouble();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
  }

  @override
  Widget build(BuildContext context) {
    final double radius = 130.0;
    final double centerX = 200.0;
    final double centerY = 200.0;

    bool isSpinning = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Spin Bottle'),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "images/s0.jpeg",
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                if (!isSpinning) {
                  _animationController.reset();
                  _animationController.forward();
                  isSpinning = true;

                  _animationController.addStatusListener((status) {
                    if (status == AnimationStatus.completed) {
                      final randomWinner = widget.allplayers[random.nextInt(widget.allplayers.length)];
                      isSpinning = false;
                      _showWinnerDialog(randomWinner);
                    }
                  });
                }
              },
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: getRandom()).animate(
                  CurvedAnimation(
                    parent: _animationController,
                    curve: Curves.linear,
                  ),
                ),
                child: Image.asset(
                  widget.bottleImagePath, // Use the selected bottle image
                  width: 120,
                  height: 120,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 165),
            child: Center(
              child: IgnorePointer(
                child: Container(
                  width: 400,
                  height: 400,
                  child: Stack(
                    alignment: Alignment.center,
                    children: widget.allplayers.map((player) {
                      final double angle = (2 * pi) / widget.allplayers.length;
                      final double playerAngle = angle * widget.allplayers.indexOf(player);
                      final double x = centerX + (radius * cos(playerAngle));
                      final double y = centerY + (radius * sin(playerAngle));
                      return Positioned(
                        left: x - 51,
                        top: y - 50,
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.redAccent, Colors.indigo],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.indigo,
                                    blurRadius: 4,
                                    offset: Offset(4, 8),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  player,
                                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showWinnerDialog(String winner) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Winner'),
          content: Text('The winner is: $winner'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

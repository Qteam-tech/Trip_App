import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({Key? key}) : super(key: key);

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0;
  final double _width = 200;
  Color _color = Colors.red;
  final double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is the Animated Box'),
      ),
      body: AnimatedContainer(
        duration: const Duration(
          milliseconds: 500,
        ),
        color: _color,
        width: _width,
        margin: EdgeInsets.all(_margin),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _margin = 20;
              });
            },
            child: Text('Animated Margin'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _color = Colors.blue;
              });
            },
            child: Text('Animated Color'),
          ),
        ]),
      ),
    );
  }
}

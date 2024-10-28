import 'package:flutter/material.dart';

class AccessibleCounter extends StatefulWidget {
  static const String route = 'accessible_counter';

  @override
  _AccessibleCounterState createState() => _AccessibleCounterState();
}

class _AccessibleCounterState extends State<AccessibleCounter> {
  int _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accessible Counter")),
      body: Center(
        child: Semantics(
          liveRegion: true,
          label: 'Valor actual:',
          onIncrease: _increaseCounter,
          onDecrease: _decreaseCounter,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Semantics(
                liveRegion: true,
                label: ' $_counter',
                child: ExcludeSemantics(
                  child: Text('$_counter', style: TextStyle(fontSize: 32)),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

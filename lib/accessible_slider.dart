import 'package:flutter/material.dart';

class AccessibleSliderExample extends StatefulWidget {

  static const String route = 'accessibility_slider';
  @override
  _AccessibleSliderExampleState createState() => _AccessibleSliderExampleState();
}

class _AccessibleSliderExampleState extends State<AccessibleSliderExample> {
  double _sliderValue = 50;

  void _updateSlider(double newValue) {
    setState(() {
      _sliderValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accessible Slider")),
      body: Center(
        child: Semantics(
          label: 'Control deslizante de volumen',
          value: '$_sliderValue%',
          slider: true,
          liveRegion: true, // Notifica cambios de valor en tiempo real
          increasedValue: '${_sliderValue + 1}%', // Valor al incrementar
          decreasedValue: '${_sliderValue - 1}%', // Valor al decrementar
          onIncrease: () => _updateSlider((_sliderValue + 1).clamp(0, 100)),
          onDecrease: () => _updateSlider((_sliderValue - 1).clamp(0, 100)),
          child: Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: '$_sliderValue%',
            onChanged: _updateSlider,
          ),
        ),
      ),
    );
  }
}

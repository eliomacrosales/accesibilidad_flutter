import 'package:flutter/material.dart';

class AccessibleCheckbox extends StatefulWidget {

  static const String route = 'check_box_accessibility';
  @override
  _AccessibleCheckboxState createState() => _AccessibleCheckboxState();
}

class _AccessibleCheckboxState extends State<AccessibleCheckbox> {
  bool _isAccepted = false;

  void _toggleCheckbox(bool? newValue) {
    setState(() {
      _isAccepted = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accessible Checkbox List")),
      body: Center(
        child: CheckboxListTile(
          title: Text(
            'Acepto los términos y condiciones',
            style: TextStyle(fontSize: 18),
          ),
          value: _isAccepted,
          onChanged: _toggleCheckbox,
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Colors.blue,
          subtitle: Semantics(
            label: 'Términos y condiciones',
            checked: _isAccepted,
            child: Text(_isAccepted ? 'Aceptado' : 'No aceptado'),
          ),
        ),
      ),
    );
  }
}

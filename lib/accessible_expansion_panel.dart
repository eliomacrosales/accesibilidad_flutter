import 'package:flutter/material.dart';

class AccessibleExpansionPanel extends StatefulWidget {

  static const String route = 'accessibility_expansion_panel';
  @override
  _AccessibleExpansionPanelState createState() => _AccessibleExpansionPanelState();
}

class _AccessibleExpansionPanelState extends State<AccessibleExpansionPanel> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accessible Expansion Panel")),
      body: Center(
        child: Semantics(
          liveRegion: true,
          label: 'Doble toque para ${_isExpanded ? "colapsar" : "expandir"}',
          expanded: _isExpanded,
          child: GestureDetector(
            onTap: _toggleExpansion,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Detalles de la información',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  if (_isExpanded)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Este es el contenido expandido del panel. Aquí puedes incluir detalles adicionales.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

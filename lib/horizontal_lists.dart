import 'package:flutter/material.dart';

class HorizontalLists extends StatelessWidget {

  static const String route = 'horizontal_lists';
  const HorizontalLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas Horizontales'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _buildPersonList(['Carlos', 'Ana', 'Luis', 'Pedro', 'María', 'Jorge', 'Marta', 'Lucía', 'Raúl']),
              ),
            ),

            // Texto Separador
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Separador',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),


            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _buildPersonList(['Laura', 'Felipe', 'Sofía', 'Andrés', 'Claudia', 'Nicolás', 'Paula', 'Mateo', 'Esteban']),
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> _buildPersonList(List<String> names) {
    return names.map((name) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      );
    }).toList();
  }
}

import 'package:flutter/material.dart';

class VerticalLists extends StatelessWidget {

  static const String route = 'vertical_lists';
  const VerticalLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas Verticales'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: _buildPersonList([
                  'Carlos', 'Ana', 'Luis', 'Pedro', 'María', 'Jorge', 'Marta', 'Lucía', 'Raúl',
                  'Laura', 'Felipe', 'Sofía', 'Andrés', 'Claudia', 'Nicolás', 'Paula', 'Mateo', 'Esteban', 'Elena',
                  'Rafael', 'Inés', 'Carmen', 'David', 'Pablo', 'Sara'
                ]),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Separador',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: _buildPersonList([
                  'Manuel', 'Gabriela', 'Roberto', 'Victoria', 'Mario', 'Isabel', 'Alberto',
                  'Cristina', 'Ricardo', 'Natalia', 'Francisco', 'Margarita', 'Javier', 'Emilia', 'Sergio', 'Daniela',
                  'Ramón', 'Julia', 'César', 'Adriana', 'Gonzalo', 'Alicia', 'Fernando', 'Beatriz', 'Miguel'
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
  List<Widget> _buildPersonList(List<String> names) {
    return names.map((name) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }).toList();
  }
}

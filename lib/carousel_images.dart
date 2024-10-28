import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class AccessibleCarousel extends StatefulWidget {

  static const String route = 'carousel ';
  @override
  _AccessibleCarouselState createState() => _AccessibleCarouselState();
}

class _AccessibleCarouselState extends State<AccessibleCarousel> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  int _step = 0;

  final List<Map<String, String>> _images = [
    {'image': 'assets/images/cieloazul.jpg', 'description': 'Cielo azul'},
    {'image': 'assets/images/verde.jpg', 'description': 'Montañas verdes'},
    {'image': 'assets/images/atardecer.JPG', 'description': 'Playa al atardecer'},
    {'image': 'assets/images/cuidad.jpg', 'description': 'Ciudad iluminada por la noche'},
  ];

  @override
  void initState() {
    super.initState();
  }

  void _announceCurrentElement() {
    SemanticsService.announce(
        'Elemento ${_currentIndex + 1} de ${_images.length}',
        TextDirection.ltr
    );
  }


  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
    _announceCurrentElement();
  }

  void _checkEndOfCarousel() {
    if (_currentIndex != _images.length - 1) {
      setState(() {
        _step = 0;
      });
    }
    else if(_currentIndex == _images.length - 1 && _step == 1){
      SemanticsService.announce('No hay más elementos', TextDirection.ltr);
    }
    else if(_currentIndex == _images.length - 1 && _step == 0){
      setState(() {
        _step = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Carrucel de imágenes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Este es un texto antes del carrusel',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Semantics(
              container: true,
              explicitChildNodes: true,
              label: "Carrusel de imágenes, use dos dedos para desplazarse",
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollEndNotification) {
                    _checkEndOfCarousel();
                  }
                  return false;
                },
                child: Container(
                  height: screenHeight * 0.25,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: _controller,
                        itemCount: _images.length,
                        onPageChanged: _onPageChanged,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Semantics(
                                image: true,
                                label: _images[index]['description'],
                                child: Image.asset(
                                  _images[index]['image']!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                            ),
                          );
                        },
                      ),

                      Positioned(
                        bottom: 16.0,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(_images.length, (index) {
                            return Container(
                              margin: const EdgeInsets.all(4.0),
                              width: _currentIndex == index ? 12.0 : 8.0,
                              height: _currentIndex == index ? 12.0 : 8.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index ? Colors.blue : Colors.white, // Color según el puntito actual
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Este es un texto después del carrusel',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:accesibilidad/accessible_check_box.dart';
import 'package:accesibilidad/accessible_counter.dart';
import 'package:accesibilidad/accessible_expansion_panel.dart';
import 'package:accesibilidad/accessible_slider.dart';
import 'package:accesibilidad/block_sections.dart';
import 'package:accesibilidad/block_semantics_page.dart';
import 'package:accesibilidad/carousel_images.dart';
import 'package:accesibilidad/hidden_accessibility_page.dart';
import 'package:accesibilidad/horizontal_lists.dart';
import 'package:accesibilidad/live_region_page.dart';
import 'package:accesibilidad/merge_semantics.dart';
import 'package:accesibilidad/order_accessibility_page.dart';
import 'package:accesibilidad/vertical_lists.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HiddenAccessibilityPage.route: (_) => const HiddenAccessibilityPage(),
        LiveRegionPage.route: (_) => const LiveRegionPage(),
        OrderAccessibilityPage.route: (_) => const OrderAccessibilityPage(),
        BlockSemanticsPage.route: (_) => const BlockSemanticsPage(),
        BlockSections.route: (_) => BlockSections(),
        HorizontalLists.route: (_) => HorizontalLists(),
        VerticalLists.route: (_) => VerticalLists(),
        AccessibleCarousel.route: (_) => AccessibleCarousel(),
        MergeSemanticsPage.route: (_) => MergeSemanticsPage(),
        AccessibleCounter.route: (_) => AccessibleCounter(),
        AccessibleCheckbox.route: (_) => AccessibleCheckbox(),
        AccessibleSliderExample.route: (_) => AccessibleSliderExample(),
        AccessibleExpansionPanel.route: (_) => AccessibleExpansionPanel(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplos de accesibilidad'),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Block Semantics'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, BlockSemanticsPage.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Orden de Nodos'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, OrderAccessibilityPage.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Accesibilidad oculta'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, HiddenAccessibilityPage.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Region viva'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, LiveRegionPage.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Bloque de semantics'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, BlockSections.route),
                  ),

                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Listas horizontales'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, HorizontalLists.route),
                  ),

                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Listas verticales'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, VerticalLists.route),
                  ),

                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Carousel de imagenes'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, AccessibleCarousel.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Merge Semantics Example'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, MergeSemanticsPage.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Control deslizante: contador'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, AccessibleCounter.route),
                  ),

                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Marcar casilla'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, AccessibleCheckbox.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Barra deslizante'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, AccessibleSliderExample.route),
                  ),
                  ListTile(
                    leading: const FlutterLogo(),
                    title: const Text('Elemento expandible'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () => Navigator.pushNamed(context, AccessibleExpansionPanel.route),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

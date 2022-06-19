import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas Cine'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
      
            // Tarjetas Principales
            CardSwiper(),
      
            // Slider de peliculas
            MovieSlider(),
      
            // Listado horizontal de películas
          ],
        ),
      )
      
    );
  }
}
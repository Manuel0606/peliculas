import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

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
          children: [
      
            // Tarjetas Principales
            CardSwiper( movies: moviesProvider.onDisplayMovies,),
      
            // Slider de peliculas
            MovieSlider(
              movies: moviesProvider.popularsMovies,
              title: 'Populars',
            ),
      
            // Listado horizontal de películas
          ],
        ),
      )
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_movie/movie_dto.dart';
import 'package:flutter_movie/movie_item.dart';
import 'package:flutter_movie/movie_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class MoviePage extends HookWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listState=useState<List<movieDTO>>([]);

    useEffect((){
      AttrRepository.getDTO().then((value){
        listState.value=value ?? [];
      });
    },[]);


    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: listState.value.map((e) => MovieItem(MovieDTO: e)).toList(),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_movie/movie_dto.dart';

class MovieItem extends StatelessWidget {
  final movieDTO MovieDTO;
  const MovieItem({Key? key, required this.MovieDTO}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(MovieDTO.rank),
          Text(MovieDTO.audiCnt),
          Text(MovieDTO.movieNm),
          Text(MovieDTO.openDt),
        ],
      ),
    );
  }
}

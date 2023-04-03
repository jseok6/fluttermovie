class movieDTO{
  String rank;
  String audiCnt;
  String movieNm;
  String openDt;

  movieDTO({
    required this.rank,
    required this.audiCnt,
    required this.movieNm,
    required this.openDt,
  });

  factory movieDTO.fromJson(dynamic json) => movieDTO(
    rank: json["rank"],
    audiCnt: json["audiCnt"],
    movieNm: json["movieNm"],
    openDt: json["openDt"],
  );
  static List<movieDTO> fromJsonList(List jsonList){
    return jsonList.map((e) => movieDTO.fromJson(e)).toList();
  }
}
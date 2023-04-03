import 'dart:convert';
import 'package:flutter_movie/movie_dto.dart';
import 'package:http/http.dart' as http;

class AttrRepository {
  static Future<List<movieDTO>?>getDTO() async{
    final String url="http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101";
    http.Response response=await http.get(Uri.parse(url));
    if(response.statusCode==200) {
      dynamic json=jsonDecode(response.body);


      return movieDTO.fromJsonList(json["boxOfficeResult"]["dailyBoxOfficeList"]);
    }else {
      return null;
    }
  }
}
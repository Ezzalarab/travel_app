import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/data_model.dart';

class DataServices {
  String baseUrl = 'https://www.youtube.com';

  String jsonData = '''
[
  {
    "id": 1,
    "name": "Moraine Lake",
    "description": "Moraine Lake is yet another astonishing geographical location that you cannot affort to miss out on if you're traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promissing epitome of ecstatic blue waters. Thes lake is from the glaciers and is gifted its startling blue color from the silicon deposite from the melting glaciers",
    "price": 3456,
    "stars": 3,
    "people": 5,
    "selected_people": 4,
    "img": "mountain.jpeg",
    "location": "Moraine Lake, Alberta",
    "created_at": "2021-11-17T10:16:31.000000Z",
    "updated_at": "2021-11-17T10:16:31.000000Z"
  },
  {
    "id": 2,
    "name": "Moraine Lake",
    "description": "Moraine Lake is yet another astonishing geographical location that you cannot affort to miss out on if you're traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promissing epitome of ecstatic blue waters. Thes lake is from the glaciers and is gifted its startling blue color from the silicon deposite from the melting glaciers",
    "price": 3456,
    "stars": 3,
    "people": 5,
    "selected_people": 4,
    "img": "welcome-three.png",
    "location": "Moraine Lake, Alberta",
    "created_at": "2021-11-17T10:16:31.000000Z",
    "updated_at": "2021-11-17T10:16:31.000000Z"
  },
  {
    "id": 3,
    "name": "Moraine Lake",
    "description": "Moraine Lake is yet another astonishing geographical location that you cannot affort to miss out on if you're traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promissing epitome of ecstatic blue waters. Thes lake is from the glaciers and is gifted its startling blue color from the silicon deposite from the melting glaciers",
    "price": 3456,
    "stars": 3,
    "people": 5,
    "selected_people": 4,
    "img": "mountain.jpeg",
    "location": "Moraine Lake, Alberta",
    "created_at": "2021-11-17T10:16:31.000000Z",
    "updated_at": "2021-11-17T10:16:31.000000Z"
  }
]''';

  Future<List<DataModel>> getInfo() async {
    String apiUrl = '/get_places';
    Uri apiLink = Uri.parse(baseUrl + apiUrl);
    try {
      // http.Response res = await http.get(apiLink);
      // if (res.statusCode == 200) {
      //   if (kDebugMode) {
      //     print(res.body);
      //   }
      // }
      await http.get(apiLink);
      List<dynamic> list = jsonDecode(jsonData);
      return list.map((e) => DataModel.fromMap(e)).toList();
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
        print(s);
      }
      return <DataModel>[];
    }
  }
}

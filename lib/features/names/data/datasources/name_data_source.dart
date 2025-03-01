import 'dart:convert';
import 'package:demo3/features/names/data/models/name_model.dart';
import 'package:http/http.dart' as http;

class NameDataSource {
  // This class has containes dummy datas or datas from API
  // Api
  final String apiUrl = "https://jsonplaceholder.typicode.com/users";

  Future<List<NameModel>> getApiNames() async {
    //getting the repsonse from the api
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => NameModel.fromJson(json)).toList();
    } else {
      throw Exception("Falied to load names");
    }
  }



  final List<NameModel> _dummynames = [
    NameModel(names: "Tony Stark"),
    NameModel(names: "Mark"),
    NameModel(names: "Elon musk"),
  ];

  //For fetching those datas we have to write the getter function

  Future<List<NameModel>> getNames() async {
    await Future.delayed(Duration(seconds: 1));
    return _dummynames;
  }
  
}



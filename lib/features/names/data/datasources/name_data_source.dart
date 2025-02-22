import 'package:demo3/features/names/data/models/name_model.dart';

class NameDataSource {
  // This class has containes dummy datas or datas from API
  // Api 
  final String apiUrl = "https://jsonplaceholder.typicode.com/users";

  final List<NameModel> _dummynames = [
    NameModel(name: "Tony Stark"),
    NameModel(name: "Mark"),
    NameModel(name: "Elon musk"),
  ];

  //For fetching those datas we have to write the getter function

  Future<List<NameModel>> getNames() async {
    await Future.delayed(Duration(seconds: 1));
    return _dummynames;
  }




}

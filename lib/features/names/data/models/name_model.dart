import 'package:demo3/features/names/domain/entities/name_entity.dart';

class NameModel extends NameEntity {
  final String names;
  NameModel({required this.names}) : super(name: names);

  //modify the input which is comes from the json file
  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(names: json['name']);
  }
}


class NumberModel extends NumberEntitiy{
   final int numbers;
   NumberModel({required this.numbers}) : super(number:numbers);

   factory NumberModel.fromJson(Map<String,dynamic>json){
    return NumberModel(numbers: json['numbers']);
   }

  
}

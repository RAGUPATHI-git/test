//This file is just using for repo interface and it has abstract class

import 'package:demo3/domain/entities/user_entite.dart';

abstract class UserRepo {
  Future<User> getUser(int id);
}

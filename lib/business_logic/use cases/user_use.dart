import 'package:demo3/data/repositories/user_repo.dart';
import 'package:demo3/domain/entities/user_entite.dart';

class GetUser {
  final UserRepo userRepo;
  GetUser({required this.userRepo});

  Future<User> call(int id) async {
   return  await userRepo.getUser(id);
  }
}

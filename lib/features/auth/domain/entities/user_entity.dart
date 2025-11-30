import 'package:hive/hive.dart';
import 'package:responsive_fruits/features/auth/data/models/login_model/data.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 2)
class UserEntity {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? name;

  @HiveField(2)
  String? mobile;

  @HiveField(3)
  dynamic email;

  @HiveField(4)
  dynamic address;

  @HiveField(5)
  String? token;

  @HiveField(6)
  String? imageUrl;

  UserEntity({
    required this.id,
    required this.name,
    this.email,
    required this.mobile,
    this.address,
    this.token,
    required this.imageUrl,
  });

  factory UserEntity.fromUserModel(Data userModel) {
    return UserEntity(
      id: userModel.id,
      name: userModel.name,
      mobile: userModel.mobile,
      email: userModel.email,
      address: userModel.address,
      token: userModel.token,
      imageUrl: userModel.profilePhotoUrl,
    );
  }
}

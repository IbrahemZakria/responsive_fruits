import 'dart:io';

class AddRegesterEntity {
  final String name;
  String? email;
  final String password;
  final String confirmPassword;
  final String phone;
  String? address;
  File? avatarFile;
  final void Function()? ontap;

  AddRegesterEntity({
    required this.name,
    this.email,
    required this.password,
    required this.phone,
    this.address,
    this.avatarFile,
    required this.confirmPassword,
    this.ontap,
  });
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "c_password": confirmPassword,
      "mobile": phone,
      "address": address,
      "profile_photo_path": avatarFile,
    };
  }
}

class Data {
  String? mobile;
  String? name;
  String? profilePhotoPath;
  String? token;

  Data({this.mobile, this.name, this.profilePhotoPath, this.token});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    mobile: json['mobile'] as String?,
    name: json['name'] as String?,
    profilePhotoPath: json['profile_photo_path'] as String?,
    token: json['token'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'mobile': mobile,
    'name': name,
    'profile_photo_path': profilePhotoPath,
    'token': token,
  };
}

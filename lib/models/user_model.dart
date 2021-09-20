class UserModel {
  int? id;
  String? name ;
  String? email ;
  String? username ;
  String? profilePhotoUrl ;
  String? token ;
  String? phone ;

// constructor nya
  UserModel(
      {
      this.id,
      this.name,
      this.email,
      this.username,
      this.profilePhotoUrl,
      this.token,
      this.phone
      });

  // contructor bila data dari json
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
    phone = json['phone'];
  }

  // buat function untuk mengubah fungsi diatas ke dalam bentuk json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
      'phone': phone,
      };
  }
}

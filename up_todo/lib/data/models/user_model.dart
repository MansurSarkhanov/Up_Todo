class UserModel {
  String? email;
  String? password;
  String? token;
  String? image;
  String? username;

  UserModel({this.email, this.password, this.token, this.image, this.username});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    token = json['token'];
    image = json['image'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['token'] = token;
    data['image'] = image;
    data['username'] = username;
    return data;
  }
}

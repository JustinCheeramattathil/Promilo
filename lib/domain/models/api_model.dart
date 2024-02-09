///This is the model class used to pass data to the backend with the help of API
class ApiModel {
  ///Field for store username
  String username;
  ///Field for store password
  String password;

  ApiModel({required this.username, required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory ApiModel.fromMap(Map<String, dynamic> map) {
    return ApiModel(
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

 
}

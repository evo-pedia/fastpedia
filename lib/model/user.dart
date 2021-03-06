class User {
  int id;
  String username;
  String token;
  String role;
  String name;
  String email;
  String nik;
  String phone;

  User({this.id, this.role, this.username, this.token, this.phone, this.email, this.name, this.nik});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      token: json['token'],
      role: json['role'],
      name: json['name'],
      email: json['email'],
      nik: json['id_number'],
      phone: json['phone']
    );
  }
}

class SendUser {
  String username;
  String password;

  SendUser(String username, String password) {
    this.username = username;
    this.password = password;
  }
}

class SendRegisterUser {
  String username;
  String password;
  String name;
  String email;
  String nik;
  String phone;

  SendRegisterUser(String username, String password, String name, String email, String nik, String phone) {
    this.username = username;
    this.password = password;
    this.name = name;
    this.email = email;
    this.nik = nik;
    this.phone = phone;
  }
}

class SendUpdateUser {
  String name;
  String email;
  String nik;
  String phone;

  SendUpdateUser(String name, String email, String nik, String phone) {
    this.name = name;
    this.email = email;
    this.nik = nik;
    this.phone = phone;
  }
}

class SendChangePassword {
  String oldPassword;
  String newPassword;

  SendChangePassword(String oldPassword, String newPassword) {
    this.oldPassword = oldPassword;
    this.newPassword = newPassword;
  }
}

class SuccessRegisterAndUpdate {
  String message;

  SuccessRegisterAndUpdate({this.message});

  factory SuccessRegisterAndUpdate.fromJson(Map<String, dynamic> json) {
    return SuccessRegisterAndUpdate(
      message: json['message']
    );
  }
}

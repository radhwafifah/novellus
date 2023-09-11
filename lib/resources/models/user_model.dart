class UserModel {
  final int? id;
  final String email;
  final String username;
  final String name;
  final String password;
  final String role;
  final String? createdAt;
  final String? updatedAt;
  final String? lastLogin;

  UserModel({
  this.id,
  required this.email,
  required this.username,
  required this.name,
  required this.password,
  required this.role,
  this.createdAt,
  this.updatedAt,
  this.lastLogin,
});

factory UserModel.fromMap(Map<String, dynamic> data) {return UserModel(
  id: data['id'],
  email: data['email'],
  username: data['username'],
  name: data['name'],
  password: data['password'],
  role: data['role'],
  createdAt: data['createdAt'],
  updatedAt: data['updatedAt'],
  lastLogin: data['lastLogin'],
  );
}

Map<String, dynamic> toMap() => {
  'id': id,
  'email': email,
  'username': username,
  'name': name,
  'password': password,
  'role': role,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
  'lastLogin': lastLogin,
};
Map<String, dynamic> toMapInsert() => {
  'email': email,
  'username': username,
  'name': name,
  'password': password,
  'role': role,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
  'lastLogin': lastLogin,
};
}
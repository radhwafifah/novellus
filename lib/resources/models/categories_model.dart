class CategoriesModel {
  final int? id;
  final String name;
  final String? createdAt;
  final String? updatedAt;

  CategoriesModel({
  this.id,
  required this.name,
  this.createdAt,
  this.updatedAt,
});

factory CategoriesModel.fromMap(Map<String, dynamic> data) {return CategoriesModel(
  id: data['id'],
  name: data['name'],
  createdAt: data['createdAt'],
  updatedAt: data['updatedAt'],
  );
}

Map<String, dynamic> toMap() => {
  'name': name,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}
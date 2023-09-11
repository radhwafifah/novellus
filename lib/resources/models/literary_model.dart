class LiteraryModel {
  final int? id;
  final int userId;
  final int categoryId;
  final String title;
  final String synopsis;
  final String status;
  final String? publishedDate;
  final String coverUrl;
  final String? createdAt;
  final String? updatedAt;
  final String genre;

  LiteraryModel({
  this.id,
  required this.userId,
  required this.categoryId,
  required this.title,
  required this.synopsis,
  required this.status,
  required this.publishedDate,
  required this.coverUrl,
  this.createdAt,
  this.updatedAt,
  required this.genre,
});

factory LiteraryModel.fromMap(Map<String, dynamic> data) {return LiteraryModel(
  id: data['id'],
  userId: data['userId'],
  categoryId: data['categoryId'],
  title: data['title'],
  synopsis: data['synopsis'],
  status: data['status'],
  publishedDate: data['publishedDate'],
  coverUrl: data['coverUrl'],
  createdAt: data['createdAt'],
  updatedAt: data['updatedAt'],
  genre: data['genre']
  );
}

Map<String, dynamic> toMap() => {
  'userId': userId,
  'categoryId': categoryId,
  'title': title,
  'synopsis': synopsis,
  'status': status,
  'publishedDate': publishedDate,
  'coverUrl': coverUrl,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
  'genre': genre,
};
}
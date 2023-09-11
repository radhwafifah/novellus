class ChaptersModel {
  final int? id;
  final int literaryWorkId;
  final String title;
  final String content;
  final String status;
  final String? publishedDate;
  final String? createdAt;
  final String? updatedAt;

  ChaptersModel({
  this.id,
  required this.literaryWorkId,
  required this.title,
  required this.content,
  required this.status,
  required this.publishedDate,
  this.createdAt,
  this.updatedAt,
});

factory ChaptersModel.fromMap(Map<String, dynamic> data) {return ChaptersModel(
  id: data['id'],
  literaryWorkId: data['literaryWorkId'],
  title: data['title'],
  content: data['content'],
  status: data['status'],
  publishedDate: data['publishedDate'],
  createdAt: data['createdAt'],
  updatedAt: data['updatedAt'],
  );
}

Map<String, dynamic> toMap() => {
  'literaryWorkId': literaryWorkId,
  'title': title,
  'content': content,
  'status': status,
  'publishedDate': publishedDate,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}
class BookmarkModel {
  final int? id;
  final int? userId;
  final int? literaryWorkId;
  final String? bookmarkedAt;
  final String? createdAt;
  final String? updatedAt;

  BookmarkModel({
  this.id,
  this.userId,
  this.literaryWorkId,
  this.bookmarkedAt,
  this.createdAt,
  this.updatedAt,
});

factory BookmarkModel.fromMap(Map<String, dynamic> data) {return BookmarkModel(
  id: data['id'],
  userId: data['userId'],
  literaryWorkId: data['literaryWorkId'],
  bookmarkedAt: data['bookmarkedAt'],
  createdAt: data['createdAt'],
  updatedAt: data['updatedAt'],
  );
}

Map<String, dynamic> toMap() => {
  'bookmarkedAt': bookmarkedAt,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}
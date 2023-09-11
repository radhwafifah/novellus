class ReviewModel {
  final int? id;
  final int? userId;
  final int? literaryWorkId;
  final int rating;
  final String review;
  final String? createdAt;
  final String? updatedAt;

  ReviewModel({
  this.id,
  this.userId,
  this.literaryWorkId,
  required this.rating,
  required this.review,
  this.createdAt,
  this.updatedAt,
});

factory ReviewModel.fromMap(Map<String, dynamic> data) {return ReviewModel(
  id: data['id'],
  userId: data['userId'],
  literaryWorkId: data['literaryWorkId'],
  rating: data['rating'],
  review: data['review'],
  createdAt: data['createdAt'],
  updatedAt: data['updatedAt'],
  );
}

Map<String, dynamic> toMap() => {
  'rating': rating,
  'review': review,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}
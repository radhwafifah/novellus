class HistoriesModel {
  final int? id;
  final int? userId;
  final int? literaryWorkId;
  final String? action;
  final String? createdAt;
  final String? updatedAt;

  HistoriesModel({
  this.id,
  this.userId,
  this.literaryWorkId,
  this.action,
  this.createdAt,
  this.updatedAt,
});

factory HistoriesModel.fromMap(Map<String, dynamic> data) {return HistoriesModel(
  id: data['id'],
  userId: data['userId'],
  literaryWorkId: data['literaryWorkId'],
  action: data['action'],
  createdAt: data['createdAt'],
  updatedAt: data['updatedAt'],
  );
}

Map<String, dynamic> toMap() => {
  'action': action,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}
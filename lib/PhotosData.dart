class Photosdata2 {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Photosdata2({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  Photosdata2.fromJson(Map<dynamic, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<String, dynamic>();
    data['albumId'] = this.albumId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['thumbnailUrl'] = this.thumbnailUrl;
    return data;
  }
}

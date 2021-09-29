class GallleryModel {
  int? id;
  String? url;
  
  // constructor nya
  GallleryModel({this.url, this.id});

  GallleryModel.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'url': url};
  }
}

class CategoryModel {
  int? id;
  String? name;
  // constructor nya
  CategoryModel({this.id, this.name});
  
  CategoryModel.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> tojson() {
    return {
      'id': id,
      'name' : name,
    };
  }
}

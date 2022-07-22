class Category{
  final String? id;
  final String name;

  Category({ this.id,required this.name});

Map<String,dynamic> toJson(){
  return {'id':id,'name':name};
}

static Category fromJson(Map<String,dynamic> json){
  return Category(name: json['name'],id: json['id']);
}
}
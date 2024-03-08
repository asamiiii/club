class ItemModel{
  String? id ;
  String? name;
  String? discription;
  String? image;
  

  ItemModel({
    this.id,
    this.name,
    this.image,
    this.discription,
  });
  
  
   Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'discription': discription,
    };
  }

  factory ItemModel.fromJson(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] ?? '',
      name: map['name'] ??'',
      image:map['image'] ??'',
      discription:map['discription'] ??'',
    );
  }
  }

 
  



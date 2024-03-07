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
      // 'imagesList':imagesList,
      'discription': discription,
      // 'category':category,
      // 'branch':branch,
      // 'price':price,
      // 'discount': discount,
      // 'ingredients':ingredients,
      // 'nutritionDeclaration':nutritionDeclaration
    };
  }

  factory ItemModel.fromJson(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] ?? '',
      name: map['name'] ??'',
      image:map['image'] ??'',
      // imagesList: map['imagesList']??'',
      discription:map['discription'] ??'',
      // category:map['category'] ??'',
      // branch:map['branch'] ??'',
      // price:map['price'] ??'',
      // discount:map['discount'] ??'',
      // ingredients:map['ingredients'] ??'',
      // nutritionDeclaration:map['nutritionDeclaration'] ,
    );
  }
  }

 
  



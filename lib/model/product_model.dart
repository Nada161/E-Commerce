class ProductModel{
  String? name, price, image, description;

  ProductModel.fromjson(map){
    name=map['name'];
    price=map['price'];
    image=map['image'];
    description=map['description'];
  }
  toJson() {
    return {
      'name': name,
      'price': price,
      'image': image,
      'description': description,
    };
  }

}
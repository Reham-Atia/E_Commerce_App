class CatModel
{
  String name;
  String image;

  CatModel({
    this.name,
    this.image,
  });

  CatModel.fromJson(Map<String, dynamic> json)
  {
    name = json['name'];
    name = json['image'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'name' : name,
      'image' : image
    };
  }
}
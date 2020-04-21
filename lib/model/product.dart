//产品列表项数据
class ProductItemModal {
  //产品描述
  String desc;

  //类型
  String type;

  //名称
  String name;

  //图片路径
  String imageUrl;

  ProductItemModal({this.desc, this.type, this.name, this.imageUrl});

  factory ProductItemModal.fromJson(dynamic json) {
    return ProductItemModal(
        desc: json['desc'],
        type: json['type'],
        name: json['name'],
        imageUrl: json['imageUrl']);
  }
}

//产品列表数据转换
class ProductListModal {
  List<ProductItemModal> data;

  ProductListModal(this.data);

  factory ProductListModal.fromJson(List json) {
    return ProductListModal(
        json.map((i) => ProductItemModal.fromJson((i))).toList());
  }
}

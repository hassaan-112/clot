import '../model/products.dart';
import '../res/assets/images.dart';

class dataReop{
  List<Product> add_data(){
    return [
      Product(id: 1,title: "Men's Harrington Jacket", price: "\$148.00", imageUrl:ImageRoutes.pic1,isLiked: true,category: "topSelling",description: ""),
      Product(id: 2,title: "Max Cirro Men's Slides", price: "\$55.00", imageUrl:ImageRoutes.pic2,isLiked: false,category: "topSelling",description: ""),
      Product(id:3,title: "Men's Coaches Jacket", price: "\$66.00", imageUrl:ImageRoutes.pic3,isLiked: false,category: "topSelling",description: ""),
      Product(id: 4,title: "Nike Unscripted", price: "\$120.00", imageUrl:ImageRoutes.pic4,isLiked: false,category: "New in",description: ""),
      Product(id: 5,title: "Nike SB", price: "\$100.00", imageUrl:ImageRoutes.pic5,isLiked: true,category: "New in",description: ""),
      Product(id: 6,title: "Nike Windrunner", price: "\$52.97", imageUrl:ImageRoutes.pic6,isLiked: false,category: "New in",description: ""),
    ];

  }
}
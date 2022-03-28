import 'package:commerce/model/category_model.dart';
import 'package:commerce/model/product_model.dart';
import 'package:commerce/services/home_service.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{

  List<CategoryModel>categoryModel=[];
  List <ProductModel>productModel=[];
    HomeViewModel(){
    getCategory();
    getProduct();
  }
  getCategory()async{
    HomeServices().getCategory().then((value) => {
      for(int i =0; i<value.length;i++){
        categoryModel.add(CategoryModel.fromjson(value[i].data()))
      }
    });
    update();
  }
  getProduct()async{
  HomeServices().getProduct().then((value) => {
    for(int i =0; i<value.length;i++){
      productModel.add(ProductModel.fromjson(value[i].data()))
    }
  });
  update();
  }
}
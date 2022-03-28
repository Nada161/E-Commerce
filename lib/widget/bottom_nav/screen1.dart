import 'package:commerce/view/details_screen.dart';
import 'package:commerce/view_model/home_view_model.dart';
import 'package:commerce/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  final controller = Get.put(HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: Get.height * .1, left: 20, right: 20),
        child: GetBuilder<HomeViewModel>(
          init: HomeViewModel(),
          builder: (_) => (Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: Get.height * .05,
              ),
              CustomText(
                text: 'Categories',
                size: 20,
                isbold: true,
              ),
              SizedBox(
                height: Get.height * .07,
              ),
              Container(
                height: Get.height * .1,
                width: double.infinity,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.categoryModel.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            child: Image.network(
                                controller
                                .categoryModel[index].image
                                .toString(),
                            width: 35,
                              height: 35,
                            )
                            ,
                            backgroundColor: Colors.white,
                            radius: 25,
                          ),
                          Text(controller.categoryModel[index].name.toString())
                        ],
                      );
                    }),
              ),
           SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             CustomText(
               isbold: true,
                text: 'Best Selling',
               size: 18,
             ), CustomText(
               isbold: true,
                text: 'See All',
               size: 18,
             ),
              ],),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.productModel.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Get.to(DetailsScreen(
                              model: controller.productModel[index],));
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 200,
                                color: Colors.grey,
                                child: Image.network(controller.productModel[index].image.toString()),
                              ),
                              CustomText(
                                text: controller.productModel[index].name.toString(),
                                isbold: true,
                                size: 18,
                              ), CustomText(
                                text: controller.productModel[index].description.toString(),
                              isbold: false,
                                size: 15,
                              ), CustomText(
                                text: controller.productModel[index].price.toString(),
                                isbold: true,
                                size: 18,
                                color:Colors.green,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

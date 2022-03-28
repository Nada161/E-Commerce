import 'package:commerce/model/product_model.dart';
import 'package:flutter/material.dart';

import '../widget/custom_text.dart';

class DetailsScreen extends StatelessWidget {
   ProductModel model;
  DetailsScreen({Key? key,  required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              child: Image.network(
                '${model.image}',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: [
                      CustomText(
                        text: model.name,
                        size: 26,
                        isbold: false,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width * .4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: 'Size',
                                  isbold: false,

                                ),
                                CustomText(
                                  isbold: false,
                                  text: '11',
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width * .44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: 'Color',
                                  isbold: false,
                                ),
                                Container(
                                  width: 30,
                                  height: 20,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: 'Details',
                        size: 18,
                        isbold: false,

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomText(
                        text: model.description,
                        size: 18,
                        isbold: false,

                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomText(
                        text: "PRICE ",
                        size: 22,
                        color: Colors.grey,
                        isbold: false,

                      ),
                      CustomText(
                        text: model.price,
                        color: Colors.black45,
                        size: 18,
                        isbold: false,

                      )
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 100,
                      child: Text('Add') ,

                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

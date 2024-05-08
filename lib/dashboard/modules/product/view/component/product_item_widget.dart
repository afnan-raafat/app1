
import 'dart:typed_data';
import 'package:case_study2/dashboard/modules/product/controller/cubit/product_cubit.dart';
import 'package:case_study2/dashboard/modules/product/model/entity_model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.productModel, required this.controller,});
final ProductModel productModel;
final ProductCubit controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white ,
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(20),
        ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ///product info
                Row(
                  children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                      child: Image.memory(productModel.image??Uint8List(5),
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                      ),
                    ),
                     SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productModel.name??'product',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        ),
                        Text(productModel.desc??'description',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
              
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text((productModel.availableQuantity??0).toString(),
                        style:const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueGrey,
                        ),
                        ),
                      ],
                    )
                  ],
                ),
             ///actions
          const Divider(
            thickness: 0.5,
          ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///like
                InkWell(
                      child: productModel.favorite==1? 
                       const Icon(CupertinoIcons.heart_fill,color: Colors.red,)
                       : const Icon(
                        CupertinoIcons.heart,
                        color: Colors.red,
                       ),
                    onTap: (){
                      
                    },
                    ),
                    ///divider
                  Container(
                    height: 30,
                    width: 0.5,
                    color: Colors.grey,
                  ),
                   ///cart
                    InkWell(
                      child: productModel.cart==1? 
                       const Icon(CupertinoIcons.cart,color: Colors.blue,)
                       : const Icon(
                        CupertinoIcons.cart,
                        color: Colors.blue,
                       ),
                    onTap: (){
                      if(productModel.favorite==1){
                     controller.addItemToFavorite(productModel.id ?? 0,0);
                      }else{
                      controller.addItemToFavorite(productModel.id ?? 0,1);  
                      }
                    },
                    ),
              ],
             )
              ],
            ),
          ),
        ),
    );
  }
  
}

import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:case_study2/dashboard/modules/product/controller/cubit/product_cubit.dart';
import 'package:case_study2/dashboard/modules/product/model/entity_model/product_model.dart';
import 'package:case_study2/dashboard/modules/product/model/repo/database_repo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(FavouriteStateLading()){
    init();
  }

 List<ProductModel> products =[];
 DatabaseRepo repo=DatabaseRepo();

 Future<void> init() async{
emit(FavouriteStateLading());
await repo.initDB();
await repo.insertproduct('product1', 'desc', 0, 10 , Uint8List(10));
await repo.insertproduct('product2', 'desc2', 0, 20 , Uint8List(10));

products=await repo.fetchfavoriteProducts();
if(products.isEmpty){
  emit(FavouriteStateEmpty());
}else{
  emit(FavouriteStateLoaded());
}

  }
  void addItemToCart(int id){
repo.updateCart(1, id);
emit(FavouriteStateLoaded());
  }
  Future<void> addItemToFavorite(int id,int value) async {

 repo.updateFavorite(value, id);
 await init();
await ProductCubit.instance.init();
emit(FavouriteStateLoaded());
  }
}
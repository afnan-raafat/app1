

import 'package:bloc/bloc.dart';
import 'package:case_study2/dashboard/modules/product/controller/cubit/product_cubit.dart';
import 'package:case_study2/dashboard/modules/product/model/repo/database_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:image_picker/image_picker.dart';

part 'new_product_state.dart';

class NewProductCubit extends Cubit<NewProductState> {
  NewProductCubit() : super(NewProductInitial());

  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController qntController = TextEditingController();
   XFile? image;
  Future<void> pickProductImage() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
image = await picker.pickImage(source: ImageSource.gallery);
emit(NewProductInitial());
  }
  Future<void> takeProductImage() async {
    final ImagePicker picker = ImagePicker();
//  take an image.
 image = await picker.pickImage(source: ImageSource.camera);
 emit(NewProductInitial());
  }

Future<void> addProduct(context) async {
  DatabaseRepo db = DatabaseRepo();
  db.initDB();
  db.insertproduct(nameController.text, descController.text, 0,int.parse(qntController.text) , await image!.readAsBytes() ,);
  await ProductCubit.instance.init() ;
   Navigator.pop(context); 
}
}
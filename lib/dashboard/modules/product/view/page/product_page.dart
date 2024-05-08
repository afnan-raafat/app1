import 'package:case_study2/dashboard/modules/product/controller/cubit/product_cubit.dart';
import 'package:case_study2/dashboard/modules/product/view/component/product_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
       value: ProductCubit.instance,
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
        final ProductCubit controller = context.read<ProductCubit>();
          return Scaffold(
                    body: state is ProductStateLading?
                    const CircularProgressIndicator():
                    state is ProductStateEmpty?
                    const Center(child: Icon(
                      CupertinoIcons.delete,
                      size: 50,
                      color: Colors.blue,
                      )
                    ):
                     ListView.builder(
                      itemBuilder:(_,int index)=>ProductItemWidget(productModel: controller.products[index],
                      controller: controller,
                      ) ,
                      itemCount: controller.products.length,
                      ),
                  );
        },
      ),
    );
      }
}
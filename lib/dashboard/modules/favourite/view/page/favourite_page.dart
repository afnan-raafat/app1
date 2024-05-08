import 'package:case_study2/dashboard/modules/favourite/controller/cubit/favourite_cubit.dart';
import 'package:case_study2/dashboard/modules/favourite/view/component/favourite_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(),
      child: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
        final FavouriteCubit controller = context.read<FavouriteCubit>();
          return Scaffold(
                    body: state is FavouriteStateLading?
                    const CircularProgressIndicator():
                    state is FavouriteStateEmpty?
                    const Center(child: Icon(
                      CupertinoIcons.delete,
                      size: 50,
                      color: Colors.blue,
                      )
                    ):
                     ListView.builder(
                      itemBuilder:(_,int index)=>FavouriteItemWidget(productModel: controller.products[index],
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
part of 'favourite_cubit.dart';

@immutable
sealed class FavouriteState {}

final class FavouriteStateLading  extends FavouriteState {}
final class FavouriteStateLoaded extends FavouriteState {}
final class FavouriteStateEmpty extends FavouriteState {}
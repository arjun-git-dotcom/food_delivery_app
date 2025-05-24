import 'package:flutter_bloc/flutter_bloc.dart';

class PageViewIndexCubit extends Cubit<int> {
  PageViewIndexCubit() : super(0);

   changeIndex(index) {
    emit(index);
  }
}

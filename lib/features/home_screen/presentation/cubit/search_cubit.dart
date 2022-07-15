import 'package:bloc/bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState(isClosed:false));

  void changeState (){
    emit(SearchState(isClosed: !state.isClosed) );
  }


  @override
  void onChange(Change<SearchState> change) {
    super.onChange(change);
    print(change);
  }



}

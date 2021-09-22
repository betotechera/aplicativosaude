
import 'package:healthpayments/models/users.dart';

class AppState {
  String currentSearchContent;
  AdvantagePagination advantagePagination;

  AppState(
      this.currentSearchContent,
      this.advantagePagination);

  AppState.initalState()
      : currentSearchContent = '_',
        advantagePagination = AdvantagePagination.initalState();
}

class AdvantagePagination {
  final bool lastPage;
  final int nextPage;
  final bool notFound;

  AdvantagePagination(this.lastPage, this.nextPage, this.notFound);

  AdvantagePagination.initalState()
      : lastPage = false,
        nextPage = 1,
        notFound = false;

}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:three_dots_assignment/api/crypto_api.dart';
import 'package:three_dots_assignment/core/app_constants.dart';
import 'package:three_dots_assignment/models/crypto_api_response.dart';

import 'crypto_state.dart';

class CryptoListCubit extends Cubit<CryptoListState> {
  final CryptoAPIClient _cryptoAPIClient;
  int page = 1;

  CryptoListCubit(this._cryptoAPIClient)
      : super(const CryptoListState.initial()) {
    init();
    loadCryptoData();
  }

  init() {}

  loadCryptoData() async {
    if (state is CryptoListStateLoading) return;
    final previousData = runPreRequisites(state);
    emit(CryptoListState.loading(
        isFirstFetched: page == 1, coins: previousData));

    final response = await _cryptoAPIClient.getCoins(
        Constants.pageSize, page, Constants.currency, Constants.api_key);

    if (response.Message == Constants.successResponse) {
      page++;

      final coins = (state as CryptoListStateLoading).coins;
      coins.addAll(response.Data!);

      emit(CryptoListState.loaded(coins: coins));
    } else {
      emit(const CryptoListState.error(
        errorMsg: Constants.errorMessage,
      ));
    }
  }

  List<Coin> runPreRequisites(CryptoListState state) {
    final currentState = state;
    var oldArticles = <Coin>[];
    if (currentState is CryptoListStateLoaded) {
      oldArticles = currentState.coins;
    }
    return oldArticles;
  }
}

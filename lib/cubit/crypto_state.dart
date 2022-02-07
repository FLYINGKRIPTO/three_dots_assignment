import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:three_dots_assignment/models/crypto_api_response.dart';

part 'crypto_state.sealed.dart';

@Sealed()
abstract class _CryptoListState{
  void initial();
  void loading(List<Coin> coins, {bool isFirstFetched = false});
  void loaded(List<Coin> coins);
  void error(String errorMsg);
}
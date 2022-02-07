// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_state.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [CryptoListState] {
///
/// ([CryptoListStateInitial] initial){} with data equality
///
/// ([CryptoListStateLoading] loading){[List<Coin>] coins, [bool] isFirstFetched} with data equality
///
/// ([CryptoListStateLoaded] loaded){[List<Coin>] coins} with data equality
///
/// ([CryptoListStateError] error){[String] errorMsg} with data equality
///
/// }
@SealedManifest(_CryptoListState)
abstract class CryptoListState {
  const CryptoListState._internal();

  const factory CryptoListState.initial() = CryptoListStateInitial;

  const factory CryptoListState.loading({
    required List<Coin> coins,
    required bool isFirstFetched,
  }) = CryptoListStateLoading;

  const factory CryptoListState.loaded({
    required List<Coin> coins,
  }) = CryptoListStateLoaded;

  const factory CryptoListState.error({
    required String errorMsg,
  }) = CryptoListStateError;

  bool get isInitial => this is CryptoListStateInitial;

  bool get isLoading => this is CryptoListStateLoading;

  bool get isLoaded => this is CryptoListStateLoaded;

  bool get isError => this is CryptoListStateError;

  CryptoListStateInitial get asInitial => this as CryptoListStateInitial;

  CryptoListStateLoading get asLoading => this as CryptoListStateLoading;

  CryptoListStateLoaded get asLoaded => this as CryptoListStateLoaded;

  CryptoListStateError get asError => this as CryptoListStateError;

  CryptoListStateInitial? get asInitialOrNull {
    final cryptoListState = this;
    return cryptoListState is CryptoListStateInitial ? cryptoListState : null;
  }

  CryptoListStateLoading? get asLoadingOrNull {
    final cryptoListState = this;
    return cryptoListState is CryptoListStateLoading ? cryptoListState : null;
  }

  CryptoListStateLoaded? get asLoadedOrNull {
    final cryptoListState = this;
    return cryptoListState is CryptoListStateLoaded ? cryptoListState : null;
  }

  CryptoListStateError? get asErrorOrNull {
    final cryptoListState = this;
    return cryptoListState is CryptoListStateError ? cryptoListState : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function(List<Coin> coins, bool isFirstFetched) loading,
    required R Function(List<Coin> coins) loaded,
    required R Function(String errorMsg) error,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      return initial();
    } else if (cryptoListState is CryptoListStateLoading) {
      return loading(cryptoListState.coins, cryptoListState.isFirstFetched);
    } else if (cryptoListState is CryptoListStateLoaded) {
      return loaded(cryptoListState.coins);
    } else if (cryptoListState is CryptoListStateError) {
      return error(cryptoListState.errorMsg);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? initial,
    R Function(List<Coin> coins, bool isFirstFetched)? loading,
    R Function(List<Coin> coins)? loaded,
    R Function(String errorMsg)? error,
    required R Function(CryptoListState cryptoListState) orElse,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      return initial != null ? initial() : orElse(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoading) {
      return loading != null
          ? loading(cryptoListState.coins, cryptoListState.isFirstFetched)
          : orElse(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoaded) {
      return loaded != null
          ? loaded(cryptoListState.coins)
          : orElse(cryptoListState);
    } else if (cryptoListState is CryptoListStateError) {
      return error != null
          ? error(cryptoListState.errorMsg)
          : orElse(cryptoListState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? initial,
    void Function(List<Coin> coins, bool isFirstFetched)? loading,
    void Function(List<Coin> coins)? loaded,
    void Function(String errorMsg)? error,
    void Function(CryptoListState cryptoListState)? orElse,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      if (initial != null) {
        initial();
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else if (cryptoListState is CryptoListStateLoading) {
      if (loading != null) {
        loading(cryptoListState.coins, cryptoListState.isFirstFetched);
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else if (cryptoListState is CryptoListStateLoaded) {
      if (loaded != null) {
        loaded(cryptoListState.coins);
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else if (cryptoListState is CryptoListStateError) {
      if (error != null) {
        error(cryptoListState.errorMsg);
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function(List<Coin> coins, bool isFirstFetched)? loading,
    R Function(List<Coin> coins)? loaded,
    R Function(String errorMsg)? error,
    R Function(CryptoListState cryptoListState)? orElse,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      return initial != null ? initial() : orElse?.call(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoading) {
      return loading != null
          ? loading(cryptoListState.coins, cryptoListState.isFirstFetched)
          : orElse?.call(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoaded) {
      return loaded != null
          ? loaded(cryptoListState.coins)
          : orElse?.call(cryptoListState);
    } else if (cryptoListState is CryptoListStateError) {
      return error != null
          ? error(cryptoListState.errorMsg)
          : orElse?.call(cryptoListState);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(CryptoListStateInitial initial) initial,
    required R Function(CryptoListStateLoading loading) loading,
    required R Function(CryptoListStateLoaded loaded) loaded,
    required R Function(CryptoListStateError error) error,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      return initial(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoading) {
      return loading(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoaded) {
      return loaded(cryptoListState);
    } else if (cryptoListState is CryptoListStateError) {
      return error(cryptoListState);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(CryptoListStateInitial initial)? initial,
    R Function(CryptoListStateLoading loading)? loading,
    R Function(CryptoListStateLoaded loaded)? loaded,
    R Function(CryptoListStateError error)? error,
    required R Function(CryptoListState cryptoListState) orElse,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      return initial != null
          ? initial(cryptoListState)
          : orElse(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoading) {
      return loading != null
          ? loading(cryptoListState)
          : orElse(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoaded) {
      return loaded != null ? loaded(cryptoListState) : orElse(cryptoListState);
    } else if (cryptoListState is CryptoListStateError) {
      return error != null ? error(cryptoListState) : orElse(cryptoListState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(CryptoListStateInitial initial)? initial,
    void Function(CryptoListStateLoading loading)? loading,
    void Function(CryptoListStateLoaded loaded)? loaded,
    void Function(CryptoListStateError error)? error,
    void Function(CryptoListState cryptoListState)? orElse,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      if (initial != null) {
        initial(cryptoListState);
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else if (cryptoListState is CryptoListStateLoading) {
      if (loading != null) {
        loading(cryptoListState);
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else if (cryptoListState is CryptoListStateLoaded) {
      if (loaded != null) {
        loaded(cryptoListState);
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else if (cryptoListState is CryptoListStateError) {
      if (error != null) {
        error(cryptoListState);
      } else if (orElse != null) {
        orElse(cryptoListState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(CryptoListStateInitial initial)? initial,
    R Function(CryptoListStateLoading loading)? loading,
    R Function(CryptoListStateLoaded loaded)? loaded,
    R Function(CryptoListStateError error)? error,
    R Function(CryptoListState cryptoListState)? orElse,
  }) {
    final cryptoListState = this;
    if (cryptoListState is CryptoListStateInitial) {
      return initial != null
          ? initial(cryptoListState)
          : orElse?.call(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoading) {
      return loading != null
          ? loading(cryptoListState)
          : orElse?.call(cryptoListState);
    } else if (cryptoListState is CryptoListStateLoaded) {
      return loaded != null
          ? loaded(cryptoListState)
          : orElse?.call(cryptoListState);
    } else if (cryptoListState is CryptoListStateError) {
      return error != null
          ? error(cryptoListState)
          : orElse?.call(cryptoListState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([CryptoListStateInitial] : [CryptoListState]) initial){}
///
/// with data equality
class CryptoListStateInitial extends CryptoListState with EquatableMixin {
  const CryptoListStateInitial() : super._internal();

  @override
  String toString() => 'CryptoListState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([CryptoListStateLoading] : [CryptoListState]) loading){[List<Coin>] coins, [bool] isFirstFetched}
///
/// with data equality
class CryptoListStateLoading extends CryptoListState with EquatableMixin {
  const CryptoListStateLoading({
    required this.coins,
    required this.isFirstFetched,
  }) : super._internal();

  final List<Coin> coins;
  final bool isFirstFetched;

  @override
  String toString() =>
      'CryptoListState.loading(coins: $coins, isFirstFetched: $isFirstFetched)';

  @override
  List<Object?> get props => [
        coins,
        isFirstFetched,
      ];
}

/// (([CryptoListStateLoaded] : [CryptoListState]) loaded){[List<Coin>] coins}
///
/// with data equality
class CryptoListStateLoaded extends CryptoListState with EquatableMixin {
  const CryptoListStateLoaded({
    required this.coins,
  }) : super._internal();

  final List<Coin> coins;

  @override
  String toString() => 'CryptoListState.loaded(coins: $coins)';

  @override
  List<Object?> get props => [
        coins,
      ];
}

/// (([CryptoListStateError] : [CryptoListState]) error){[String] errorMsg}
///
/// with data equality
class CryptoListStateError extends CryptoListState with EquatableMixin {
  const CryptoListStateError({
    required this.errorMsg,
  }) : super._internal();

  final String errorMsg;

  @override
  String toString() => 'CryptoListState.error(errorMsg: $errorMsg)';

  @override
  List<Object?> get props => [
        errorMsg,
      ];
}

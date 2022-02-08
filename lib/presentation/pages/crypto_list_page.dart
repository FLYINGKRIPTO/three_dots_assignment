import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:three_dots_assignment/cubit/crypto_cubit.dart';
import 'package:three_dots_assignment/cubit/crypto_state.dart';
import 'package:three_dots_assignment/models/crypto_api_response.dart';
import 'package:three_dots_assignment/presentation/common/app_bar.dart';
import 'package:three_dots_assignment/presentation/common/tab_item.dart';
import 'package:three_dots_assignment/presentation/crypto_card.dart';
import 'package:three_dots_assignment/presentation/hearder_widget.dart';
import 'package:three_dots_assignment/utils/space.dart';

class CryptoListPage extends StatelessWidget {
  const CryptoListPage({Key? key, this.onPush, required this.tabItem})
      : super(key: key);
  final TabItem tabItem;
  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: TabContent(
          tabItem: tabItem,
        ));
  }
}

class TabContent extends StatelessWidget {
  final TabItem tabItem;

  const TabContent({Key? key, required this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [HeaderWidget(), Expanded(child: CryptoListWidget())],
    );
  }
}

class CryptoListWidget extends StatefulWidget {
  const CryptoListWidget({Key? key}) : super(key: key);

  @override
  _CryptoListWidgetState createState() => _CryptoListWidgetState();
}

class _CryptoListWidgetState extends State<CryptoListWidget> {
  late CryptoListCubit _cryptoListCubit;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _cryptoListCubit = context.read<CryptoListCubit>();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          _cryptoListCubit.loadCryptoData();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CryptoListCubit, CryptoListState>(
      bloc: _cryptoListCubit,
      builder: (context, state) {
        if (state is CryptoListStateLoading && state.isFirstFetched) {
          return const LoadingIndicator();
        }
        List<Coin> coins = [];
        bool isLoading = false;

        if (state is CryptoListStateLoading) {
          coins = state.coins;
          isLoading = true;
        } else if (state is CryptoListStateLoaded) {
          coins = state.coins;
        }
        if (coins.isEmpty) {
          return Container();
        }

        return ListView.separated(
          itemBuilder: (context, index) {
            if (index < coins.length) {
              return CryptoCard(
                crypto: coins[index],
              );
            } else {
              Timer(const Duration(milliseconds: 30), () {
                _scrollController
                    .jumpTo(_scrollController.position.maxScrollExtent);
              });
              return const LoadingIndicator();
            }
          },
          itemCount: coins.length + (isLoading ? 1 : 0),
          separatorBuilder: (context, index) => verticalSpace(12.0),
          controller: _scrollController,
        );
      },
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

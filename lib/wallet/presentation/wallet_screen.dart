import 'package:csspace_app/common/theme/theme.dart';
import 'package:csspace_app/wallet/domain/balance_bloc/balance_bloc.dart';
import 'package:csspace_app/wallet/presentation/widget/history_transaction_card.dart';
import 'package:csspace_app/wallet/presentation/widget/wallet_balance_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/locale/locale.dart';
import '../domain/history_bloc/history_bloc.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;

    final Color bgColor = Theme.of(context).scaffoldBackgroundColor;
    final Color dividerColor =
        Theme.of(context).textTheme.headlineMedium?.color ?? Colors.white;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: WalletHeaderDelegate(
              child: ColoredBox(
                color: bgColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingTheme.mediumPadding,
                  ),
                  child: BlocBuilder<BalanceBloc, BalanceState>(
                    buildWhen: (prev, curr) {
                      return prev != curr;
                    },
                    builder: (BuildContext context, BalanceState state) {
                      return WalletBalanceCard(balance: state.balance);
                    },
                  ),
                ),
              ),
            ),
          ),
          PinnedHeaderSliver(
            child: ColoredBox(
              color: bgColor, //!important
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  paddingTheme.mediumPadding,
                  paddingTheme.mediumPadding,
                  paddingTheme.mediumPadding,
                  paddingTheme.smallPadding,
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth:
                                constraints.maxWidth -
                                paddingTheme.mediumElementDistance,
                          ),
                          child: Text(
                            AppLocaleScope.of(context).transactionHistory,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(width: paddingTheme.mediumElementDistance),
                        Expanded(
                          child: Divider(color: dividerColor, thickness: 1),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),

          ///transaction list
          BlocBuilder<HistoryBloc, HistoryState>(
            buildWhen: (prev, curr) {
              return prev != curr;
            },
            builder: (BuildContext context, HistoryState state) {
              return SliverList(
                delegate: SliverChildBuilderDelegate((
                  BuildContext context,
                  int index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: paddingTheme.mediumPadding,
                      vertical: paddingTheme.mediumPadding / 2,
                    ),
                    child: HistoryTransactionCard(
                      headline: state.history[index].transactionHeadline,
                      dateTime: state.history[index].transactionTime,
                      variation: state.history[index].variation,
                    ),
                  );
                }, childCount: state.history.length),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WalletHeaderDelegate extends SliverPersistentHeaderDelegate {
  const WalletHeaderDelegate({required this.child});

  final Widget child;

  @override
  double get minExtent => WalletBalanceCard.minHeight;

  @override
  double get maxExtent => WalletBalanceCard.maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(WalletHeaderDelegate oldDelegate) => false;
}

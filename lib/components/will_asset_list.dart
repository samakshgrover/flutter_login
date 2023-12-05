import 'package:flutter/material.dart';
import 'package:flutter_login/components/no_asset.dart';
import 'package:flutter_login/components/will_item.dart';
import 'package:flutter_login/observable/observable_state.dart';

class WillAssetList extends StatelessWidget {
  WillAssetList({
    super.key,
    this.willObservable,
  });

  var willObservable;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // children: [
        //   const NoAsset(),
        // ],
        children: [
          WillItem(
            observable: willObservable,
            localState: 100,
          ),
          WillItem(
            observable: willObservable,
            localState: 100,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_login/components/no_asset.dart';
import 'package:flutter_login/components/will_item.dart';
import 'package:flutter_login/observable/observable_state.dart';

class WillAssetList extends HookWidget {
  WillAssetList({
    super.key,
    required this.willObservable,
    required this.assets,
    required this.nominees,
  });

  var willObservable;
  List<dynamic> nominees;
  Map<String, dynamic> assets;

  // assets

  // nominees

  @override
  Widget build(BuildContext context) {
    var assetWidgetList = useState<List<Widget>>([]);

    useEffect(() {
      List<Widget> list = [];
      for (var key in assets.keys) {
        for (var item in assets[key]) {
          var widget = WillItem(
            observable: willObservable,
            nominees: nominees,
            asset: item,
          );
          list.add(widget);
        }
      }
      assetWidgetList.value = list;
      // print(assets);
    }, []);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: assetWidgetList.value,
      ),
    );
  }
}

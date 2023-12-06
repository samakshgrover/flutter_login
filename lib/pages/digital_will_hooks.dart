import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_login/components/loading.dart';
import 'package:flutter_login/components/my_button.dart';
import 'package:flutter_login/components/no_asset.dart';
import 'package:flutter_login/components/will_asset_list.dart';
import 'package:flutter_login/observable/observable_state.dart';
import 'package:flutter_login/utils/api_service.dart';
// import 'package:http/http.dart' as http;

class DigitalWill extends HookWidget {
  DigitalWill({super.key});

  final willObservable = ObservableState();

  @override
  Widget build(BuildContext context) {
    var assets = useState<Map<String, dynamic>?>(null);
    var nominees = useState<List<dynamic>?>(null);
    var loading = useState(true);

    var fetchData = useCallback(() async {
      await Future.delayed(Duration(seconds: 1));
      try {
        var assetResponse = await getAllAssets();
        var nomineeResponse = await getAllNominees();

        if (assetResponse.statusCode == 200 &&
            nomineeResponse.statusCode == 200) {
          assets.value = jsonDecode(assetResponse.body)["assets"];
          nominees.value = jsonDecode(nomineeResponse.body)["nominees"];
          loading.value = false;
        } else {
          loading.value = false;
        }
      } catch (e) {
        print(e);
        loading.value = false;
      }
    }, []);

    useEffect(() {
      Future(fetchData).then((value) {
        // print(assets.value);
        // print(nominees.value);
      });
      return;
    }, []);

    if (loading.value) {
      return LoadingAssets();
    } else {
      if (assets.value == null) {
        // Error widget

        return Scaffold(
          backgroundColor: Colors.grey[100],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text("Asset Distribution"),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        // TODO: Error component
                        child: Text("Error"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  MyButton(text: "Save", onTap: () {})
                ],
              ),
            ),
          ),
        );
      } else if (assets.value!.isEmpty) {
        // No assets widget
        return Scaffold(
          backgroundColor: Colors.grey[100],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text("Asset Distribution"),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                      // No asset component
                      child: NoAsset(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  MyButton(text: "Save", onTap: () {})
                ],
              ),
            ),
          ),
        );
      } else {
        // show assets widget
        return Scaffold(
          backgroundColor: Colors.grey[100],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text("Asset Distribution"),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                      // No asset component
                      child: WillAssetList(
                        willObservable: willObservable,
                        assets: assets.value!,
                        nominees: nominees.value!,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  MyButton(text: "Save", onTap: () {
                    willObservable.notify();
                    print(willObservable.getState());
                  })
                ],
              ),
            ),
          ),
        );
      }
    }

    // return Scaffold(
    //   backgroundColor: Colors.grey[100],
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //       child: Column(
    //         children: [
    //           const Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    //             child: Text("Asset Distribution"),
    //           ),
    //           Expanded(
    //             child: Container(
    //               decoration: BoxDecoration(),
    //               child: LoadingAssets(),
    //             ),
    //           ),
    //           const SizedBox(height: 50),
    //           MyButton(text: "Save", onTap: () {})
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

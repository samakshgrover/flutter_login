import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_login/components/my_button.dart';
import 'package:flutter_login/components/will_asset_list.dart';
import 'package:flutter_login/components/will_item.dart';
import 'package:flutter_login/Observable/observable_state.dart';
import 'package:flutter_login/utils/api_service.dart';
import 'package:flutter_login/utils/get_all_assets_response.dart';
import 'package:flutter_login/utils/get_all_nominee_response.dart';

class DigitalWill extends StatefulWidget {
  const DigitalWill({super.key});

  @override
  State<DigitalWill> createState() => _DigitalWillState();
}

class _DigitalWillState extends State<DigitalWill> {
  late GetAllCategoryResponse? assets;
  late GetNomineeResponse? nominees;
  

  @override
  void initState() {
    super.initState();
    (() async {
      assets = await getAllAssets();
      nominees = await getAllNominees();
      print(jsonEncode(assets));
      print(jsonEncode(nominees));
    })();
  }

  @override
  Widget build(BuildContext context) {
    ObservableState willObservable = ObservableState();

    List<int> temp = [1, 2, 3, 4, 5];

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
                  decoration: BoxDecoration(
                      // border: Border.all(width: 0),
                      ),
                  child: WillAssetList(willObservable: willObservable),
                ),
              ),
              const SizedBox(height: 50),
              MyButton(text: "Save", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}

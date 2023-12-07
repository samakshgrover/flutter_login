// import 'dart:html';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_login/components/my_button.dart';
import 'package:flutter_login/components/nominee_item.dart';
import 'package:flutter_login/observable/observable_state.dart';

class NumberRangeTextInputFormatter extends TextInputFormatter {
  final int min;
  final int max;

  NumberRangeTextInputFormatter({
    required this.min,
    required this.max,
  });

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    try {
      final inputNumber = newValue.text.isEmpty ? 0 : int.parse(newValue.text);
      // final inputNumber = int.parse(newValue.text);
      if (inputNumber >= min && inputNumber <= max) {
        // return newValue;
        return TextEditingValue(
          text: inputNumber.toString(),
          selection: newValue.selection,
        );
      }
    } catch (e) {
      // Handle the exception if parsing fails
      print(e);
    }

    // Return the old value if the input is not within the range
    return oldValue;
  }
}

class WillItem extends HookWidget {
  const WillItem({
    super.key,
    required this.observable,
    required this.nominees,
    required this.asset,
  });

  final observable;
  final List<dynamic> nominees;
  final Map<String, dynamic> asset;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final assetName = useState("");
    final assetNumber = useState("");
    final assetId = useState(0);
    final nomineeShares = useState([]);
    final nomineeWidgetList = useState<List<Widget>>([]);
    final showError = useState(false);

    //   {
    //    uamId: number
    //     nominees: [
    //      {
    //        nomineeId: number
    //        share: number
    //      }]
    //   }

    final manageState = useCallback((state, setState) {
      Map<String, Object>? localState = {
        "uamId": assetId.value,
        "nominees": nomineeShares.value
      };

      var newState = [...state, localState];
      setState(newState);
    }, []);

    useEffect(() {
      return observable.subscribe(manageState);
    }, []);

    useEffect(() {
      List<Widget> list = [];
      for (var item in nominees) {
        var nomineeState = {"id": item["id"], "share": 0};

        nomineeShares.value = [...nomineeShares.value, nomineeState];

        var widget = SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  item["name"],
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(),
                  child: TextField(
                    onChanged: (value) {
                      if (value.trim().isEmpty) {
                        nomineeState["share"] = 0;
                      } else {
                        nomineeState["share"] = value;
                      }
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      // NumberRangeTextInputFormatter(min: 0, max: 100),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: TextEditingController.fromValue(
                      TextEditingValue(text: '0'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
        list.add(widget);
        nomineeWidgetList.value = list;
      }
      return;
    }, []);

    useEffect(() {
      assetName.value = asset["assetsList"].last["value"];
      assetNumber.value = asset["assetsList"].first["value"];
      assetId.value = int.parse(asset["uamId"]);

      return;
    });

    return Card(
      child: Container(
        width: screenWidth * .8,
        decoration: BoxDecoration(
          border: Border(),
          color: showError.value ? Colors.red : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // asset heading
              Text(
                assetName.value,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),

              // asset description
              Text(
                assetNumber.value,
                style: TextStyle(color: Colors.grey.shade500),
              ),

              // nominees
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Nominee name'),
                      Text('Share'),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Column(
                    children: nomineeWidgetList.value,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Print state'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

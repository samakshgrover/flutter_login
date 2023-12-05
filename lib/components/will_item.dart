import 'package:flutter/material.dart';
import 'package:flutter_login/components/my_button.dart';
import 'package:flutter_login/components/nominee_item.dart';
import 'package:flutter_login/observable/observable_state.dart';

class WillItem extends StatefulWidget {
  WillItem({super.key, required this.observable, this.localState});
  var observable;
  var localState;

  @override
  State<WillItem> createState() =>
      _WillItemState(observable: observable, localState: localState);
}

class _WillItemState extends State<WillItem> {
  _WillItemState({required this.observable, this.localState});
  var observable;
  var localState;
  var unsubscribe;

  final List<Widget> _nominees = [
    NomineeItem(),
    NomineeItem(),
    NomineeItem(),
  ];

  void fn(state, setState) {
    var newState = [...state, localState];
    setState(newState);
  }

  @override
  void initState() {
    super.initState();
    unsubscribe = observable.subscribe(fn);
  }

  @override
  void dispose() {
    super.dispose();
    unsubscribe();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      child: Container(
        color: Colors.white,
        width: screenWidth * .8,
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
                "Bank Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),

              // asset description
              Text(
                "Asset Identifier",
                style: TextStyle(color: Colors.grey.shade500),
              ),

              // nominees
              SizedBox(height: 20),
              // Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text('Nominee name'),
              //         Text('Share'),
              //       ],
              //     ),
              //     Divider(),
              //     SizedBox(height: 20),
              //   // ..._nominees
              //   ],
              // )
              DataTable( columns: const [
                DataColumn(label: Text('Nominee name')),
                DataColumn(label: Text('Share')),
              ], rows: const [
                DataRow(cells: [
                  DataCell(
                    Text("Ramesh"),
                  ),
                  DataCell(
                    TextField(),
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                    Text("Ramesh"),
                  ),
                  DataCell(
                    TextField(),
                  )
                ])
              ])
            ],
          ),
        ),
      ),
    );
  }
}

/*

Asset name
Asset identifier

nominee list  share
nominee name
nominee relation

 */


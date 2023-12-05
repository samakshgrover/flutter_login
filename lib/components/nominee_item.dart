import 'package:flutter/material.dart';

class NomineeItem extends StatelessWidget {
  const NomineeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Nominee name"),
        TextField(
          decoration: InputDecoration(
            hintText: '0',
            hintStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.symmetric(horizontal: 4.0),
            isDense: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

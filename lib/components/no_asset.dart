import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoAsset extends StatelessWidget {
  const NoAsset({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      child: Container(
        color: Colors.white,
        width: screenWidth * .8,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Text(
                "You've not added any assets yet?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Lottie.asset('assets/animations/not_found.json'),
            SizedBox(
              height: 20,
            ),
            Text(
              "No Assets found",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add assets"),
                ),
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

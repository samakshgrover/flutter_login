import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingAssets extends StatelessWidget {
  const LoadingAssets({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: Loading(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
              Lottie.asset('assets/animations/loading.json'),
              Text("Stay tight till your assets are loading")
            ],
          ),
        ),
      ),
    );
  }
}

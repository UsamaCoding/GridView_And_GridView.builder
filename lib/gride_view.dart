import 'package:flutter/material.dart';

class GridViewAndBuilder extends StatelessWidget {
  const GridViewAndBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "GridView & GridView.builder",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10000,
                itemBuilder: (context, BuildContext) =>
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/morningimage2.png"),
                    ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:demo3/presentation/screens/navigation/rbuttom_naviagtion.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: RBottomNavigation(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const SizedBox(
              height: 200,
            ),
            const Text("Ragu"),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 200,
              width: 400,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/notification');
                  },
                  child: const Text("Navigate")),
            )
          ],
        ),
      ),
    );
  }
}

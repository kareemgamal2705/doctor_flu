import 'package:doctor_flu/core/style/colors_manager.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: ColorsManager.whiteColor,
        foregroundColor: ColorsManager.blackColor,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: const [
            Text(
              'Good morning, Ahmed',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text('Find a doctor and book an appointment'),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text('Recommended doctors'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

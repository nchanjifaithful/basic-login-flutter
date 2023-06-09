import 'package:flutter/material.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 200,
              color: Colors.green.shade700,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Succesful!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.green.shade700,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String headerTitle;
  final bool hasBackButton;

  const Header({
    super.key,
    required this.headerTitle,
    required this.hasBackButton
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hasBackButton
            ? SizedBox(
              width: 40,
              height: 40,
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.arrow_back),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.grey[200])
                ),
              ),
            )
            : const SizedBox(width: 40, height: 40),
            const SizedBox(height: 20,),
            Text(
              '$headerTitle',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        )
      ),
    );
  }
}


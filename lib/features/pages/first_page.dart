import 'package:flutter/material.dart';
import 'package:receitanamao/common/constants/app_colors.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.orangeGradient,
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Olá! Tudo bem?",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            FractionallySizedBox(
              widthFactor: 0.8, // Ocupa 80% da largura da tela
              child: Image.asset(
                'assets/Image/firstPageChef.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

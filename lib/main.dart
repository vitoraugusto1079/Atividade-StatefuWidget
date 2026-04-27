import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: BotaoSeguir(),
    ),
  ));
}

class BotaoSeguir extends StatefulWidget {
  const BotaoSeguir({super.key});

  @override
  State<BotaoSeguir> createState() => _BotaoSeguirState();
}

class _BotaoSeguirState extends State<BotaoSeguir> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isFollowing = !isFollowing;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isFollowing ? Colors.green : const Color.fromARGB(255, 207, 207, 207),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isFollowing) ...[
              const SizedBox(width: 8),
            ],
            Text(
              isFollowing ? "Seguindo" : "Seguir",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
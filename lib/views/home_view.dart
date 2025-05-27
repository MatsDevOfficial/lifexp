import 'package:flutter/material.dart';
import '../utils/xp_manager.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final XPManager xpManager = XPManager();

  String get treeImage {
    if (xpManager.xp < 50) {
      return 'assets/images/tree_level1.png';
    } else if (xpManager.xp < 100) {
      return 'assets/images/tree_level2.png';
    } else {
      return 'assets/images/tree_level3.png';
    }
  }

  void _completeTask() {
    setState(() {
      xpManager.addXP(20);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LifeXP'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'XP: ${xpManager.xp}',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Image.asset(
            treeImage,
            height: 200,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _completeTask,
            child: const Text('Taak voltooien (+20 XP)'),
          ),
        ],
      ),
    );
  }
}

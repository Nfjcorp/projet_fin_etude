import 'package:app_recycle/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CountProvider>(
      builder:
          ((context, countProvider, child) => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    countProvider.count.toString(),
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      countProvider.navigateToAddPage(context, MyHomePage());
                    },
                    child: child,
                  ),
                ],
              ),
            ),

            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: countProvider.increment,
                  child: Icon(Icons.add),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: countProvider.decrement,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          )),
    );
  }
}

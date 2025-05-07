import 'package:app_recycle/hello_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HelloProvider>(
        builder: (context, nameProvider, child) {
          return Center(child: Column(children: []));
        },
      ),
    );
  }
}

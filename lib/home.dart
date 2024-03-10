import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final p = Provider.of<dropDown>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Consumer<dropDown>(builder: (context, pro, child) {
              return CircleAvatar(
                radius: 60,
                backgroundColor: pro.colorr[pro.number],
              );
            }),
            TextButton(
                onPressed: () {
                  p.changeColor();
                },
                child: Text('tap'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MaterialApp(
    title: foodLabel,
    home: FoodsPage(),
  ));
}

class FoodsPage extends StatelessWidget {
  const FoodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(foodLabel),
        backgroundColor: appColor,
      ),
      body: ListView.builder(
        itemCount: foodMonths.length,
        itemBuilder: (context, index) {
        final foodMonth = foodMonths[index];
            return Card(
          child: ListTile(
            leading:  CircleAvatar(

              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill
                ),
              ),

            ),
            title: Text("Mes -> $foodMonth"),
            subtitle: Text("fecha: $foodMonth"),
            trailing: const Icon(Icons.arrow_forward),
          ),
        );
        }
      )
    );
  }
}
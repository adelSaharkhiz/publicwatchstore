import 'package:flutter/material.dart';
import 'package:mywatchstore/screens/product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height * .9,
        color: Colors.blue,
        child: SizedBox(
          width: 100,
          height: 100,
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductListScreen())),
              child: const Text("SEE ALL",
                  style: TextStyle(fontSize: 30, color: Colors.black))),
        ),
      ),
    ));
  }
}

import 'package:dars8/pages/second_page.dart';
import 'package:dars8/providers/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(
              builder: (context) {
                return const SecondPage();
              },
            ));
          },
          child: Text(
            "${context.watch<ThemeProvider>().mode}",
            style: const TextStyle(fontSize: 32),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ThemeProvider>().change();
        },
      ),
    );
  }
}

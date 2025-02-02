import "package:flutter/material.dart";
import "package:music_app/components/my_drawer.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Playlist",),
        centerTitle: true,
        backgroundColor: Colors.grey.shade500,
      ),
      drawer: MyDrawer(),
    );
  }
}

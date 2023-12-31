import 'package:donutgram/features/post_screen.dart';
import 'package:donutgram/widgets/home_widgets/post_display.dart';
import 'package:donutgram/widgets/home_widgets/stories_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PostScreen()),
        ),
        child: const CircleAvatar(
          radius: 10,
          backgroundColor: Colors.black,
          child:  Icon(Icons.add, color: Colors.white),
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(child: StoriesWidget(), flex: 1),
            Expanded(
              flex: 6,
              child: PostDisplayWidget(
                userName: "DonutJacker",
                image: 'images/donut.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

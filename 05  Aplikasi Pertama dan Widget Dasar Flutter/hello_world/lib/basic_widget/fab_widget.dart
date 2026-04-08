import 'package:flutter/material.dart';

class FabWidget extends StatefulWidget {
  const FabWidget({Key? key}) : super(key: key);

  @override
  State<FabWidget> createState() => _FabWidgetState();
}

class _FabWidgetState extends State<FabWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.thumb_up,
          color: isLiked ? Colors.yellow : Colors.white,
        ),
      ),
    );
  }
}
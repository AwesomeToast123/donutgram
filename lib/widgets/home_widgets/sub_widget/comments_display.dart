import 'package:donutgram/constant.dart';
import 'package:donutgram/widgets/home_widgets/sub_widget/comments_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({
    required this.userName,
    required this.comment,
    super.key,
  });

  final String userName;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                userName,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                comment,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.black12,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    const Expanded(child: CommentBottomSheet(userName: "Mally", comment: "Urrrr",)),
                    Center(
                      child: ElevatedButton(
                        child: const Text("Close"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: const Text(
              viewAllComments,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Text(
            "15 November",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

}

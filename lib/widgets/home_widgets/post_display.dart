import 'package:donutgram/widgets/home_widgets/sub_widget/comments_display.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostDisplayWidget extends StatelessWidget {
  const PostDisplayWidget({
    required this.userName,
    required this.image,
    super.key,
  });

  final String userName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 5);
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(width: 10),
                      Text(
                        userName,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.comment,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.paperPlane,
                              color: Colors.white)),
                      const SizedBox(width: 210),
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.bookmark,
                              color: Colors.white)),
                    ],
                  ),
                  const CommentsWidget(
                    userName: "Matcha",
                    comment: "Urrrrr this is good uurrrrr",
                  ),
                ],
              ),
            );
        },
    );
  }
}

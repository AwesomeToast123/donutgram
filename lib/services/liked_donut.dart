import 'package:cloud_firestore/cloud_firestore.dart';

class LikedDonutRepository {
  final CollectionReference likedPost =
      FirebaseFirestore.instance.collection("liked_post");

  Future<void> addLikedNote(String author, String caption, String image) {
    return likedPost.add({
      "author": author,
      "caption": caption,
      "image": image,
      "timestamp": FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getLikedDonut() {
    final donutStream = likedPost.snapshots();
    return donutStream;
  }

  Future<void> deleteLikedPost(String docID) {
    return likedPost.doc(docID).delete();
  }
}

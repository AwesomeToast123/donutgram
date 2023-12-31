import 'package:cloud_firestore/cloud_firestore.dart';

class SavedDonutRepository {
  final CollectionReference savedPost =
      FirebaseFirestore.instance.collection("saved_post");

  Future<void> addSavedNote(String author, String caption, String image) {
    return savedPost.add({
      "author": author,
      "caption": caption,
      "image": image,
      "timestamp": FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getSavedDonut() {
    final donutStream = savedPost.snapshots();
    return donutStream;
  }

  Future<void> deleteSavedPost(String docID) {
    return savedPost.doc(docID).delete();
  }
}

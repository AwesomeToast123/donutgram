import 'package:cloud_firestore/cloud_firestore.dart';

class PostDonutRepository {
  final CollectionReference donutPost =
      FirebaseFirestore.instance.collection("post");

  Future<void> addDonut(String author, String caption, String image) {
    return donutPost.add({
      "author": author,
      "caption": caption,
      "image": image,
      "timestamp": FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateDonut(String author, String caption, String docID) {
    return donutPost.doc(docID).update({
      "author": author,
      "caption": caption,
      "timestamp": FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getDonut() {
    final donutStream = donutPost.snapshots();
    return donutStream;
  }

  Future<void> deleteDonut(String docID) {
    return donutPost.doc(docID).delete();
  }
}

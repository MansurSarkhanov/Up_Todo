import 'package:cloud_firestore/cloud_firestore.dart';

enum FirebaseEndpoints {
  users,
  todos;

  CollectionReference get ref => FirebaseFirestore.instance.collection(name);
}

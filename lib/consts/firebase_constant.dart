
//for authentication using
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

//cloud store data enter and get
FirebaseFirestore firestore = FirebaseFirestore.instance;

User? currentUser = auth.currentUser;

//collection
const userCollection = "users";

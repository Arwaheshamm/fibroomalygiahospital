import 'package:fibrohospital/my_app.dart';
import 'package:flutter/material.dart';
import 'core/local_database/catch_helper.dart';
import 'core/local_database/services_locator.dart';
import 'package:firebase_core/firebase_core.dart';

<<<<<<< HEAD
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

=======

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:FirebaseOptions(
      apiKey:"AIzaSyAwiBfrg8G8YCrgJNeI66aRdDpRWpEaWxc",
      appId: "1:214326319490:android:e9053b3bb3ab52a349d79b",
      messagingSenderId: "214326319490",
      projectId: "fibromyalgia-hospital"));
>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e
  await setup();
  await getIt<CacheHelper>().cacheInit();
  runApp(const FibromyalgiaApp());
}
<<<<<<< HEAD
=======

>>>>>>> 7edc303abd569c92aaa0eb4960a14c1d6ee5ff3e

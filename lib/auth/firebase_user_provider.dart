import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GiveLifeFirebaseUser {
  GiveLifeFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

GiveLifeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GiveLifeFirebaseUser> giveLifeFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GiveLifeFirebaseUser>(
            (user) => currentUser = GiveLifeFirebaseUser(user));

import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'firebase_options.dart';
import 'src/actions/get_current_user.dart';
import 'src/api/auth_api.dart';
import 'src/api/unsplash_api.dart';
import 'src/epics/app_epics.dart';
import 'src/models/app_state.dart';
import 'src/presentation/create_user.dart';
import 'src/presentation/home_page.dart';
import 'src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();
  final String? key = dotenv.env['UNSPLASH_API_KEY'];
  final Client client = Client();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final AuthApi authApi = AuthApi(auth: auth);
  final UnsplashApi api = UnsplashApi(client: client, accessKey: key);
  final AppEpics appEpics = AppEpics(api, authApi);
  final Store<AppState> store =
      Store<AppState>(reducer, initialState: const AppState(), middleware: <Middleware<AppState>>[
    EpicMiddleware<AppState>(appEpics.call).call,
  ],);
  store.dispatch(const GetCurrentUser());
  runApp(Gallery(
    store: store,
  ));
}

class Gallery extends StatelessWidget {
  const Gallery({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Gallery',
        theme: ThemeData(useMaterial3: false),
        home: const Home(),
        routes: <String, WidgetBuilder>{
          '/createUser': (BuildContext context) => const CreateUserPage(),
        },
      ),
    );
  }
}

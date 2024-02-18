import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_lists/screens/login_screen.dart';
import 'package:movie_lists/services/tmdb_movie_service.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  MyHomePage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = useState('What movie is this');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Movie test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title.value,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final check = ref.read(movieServiceProvider).getDetails(234);
          WidgetsBinding.instance.addPostFrameCallback((_) {

          check.then((value) => title.value = value.title);
          });
        },
        tooltip: 'Get a movie',
        child: const Icon(Icons.movie),
      ),
    );
  }
}

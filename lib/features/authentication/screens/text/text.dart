import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_app/data/repositories/authentication/authentication_repository.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App Title'),
     actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: const SingleChildScrollView(
        child: Text("Hi g"),
      ),
    );
  }
}

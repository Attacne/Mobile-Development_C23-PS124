import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/nav_bar.dart';
import 'database_instance.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  void initState() {
    super.initState();
    db.database();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await db.insert({
                  'title': 'title',
                  'desc': 'desc',
                  'date': 'Date: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}, '
                      'at ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} ${DateTime.now().timeZoneName}',
                });
                Navigator.pop(context, true);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

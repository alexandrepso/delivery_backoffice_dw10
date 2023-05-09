import 'package:flutter/material.dart';

import '../../env/env.dart';
import '../../helpers/loader.dart';

class HomePage extends State<HomePage> with loader {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        showLoader();
        await Future.delayed(const Duration(seconds: 2));
        hideLoader();
      }),
      body: Container(
        child: Text(Env.instance.get('backend_base_url')),
      ),
    );
  }
}

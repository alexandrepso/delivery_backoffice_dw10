import 'package:delivery_backoffice_dw10/src/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import '../../env/env.dart';
import '../../helpers/loader.dart';
import '../../helpers/messages.dart';
import '../../helpers/size_extensions.dart';
import 'home_page.dart';




const HomePage({super.key});

@override
State<HomePages> createState() => _HomePagesState();

class HomePage extends State<HomePage> with loader, Messages {
  

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

        showError('Erro de alguma coisa');



      }),
      body: Container(
        child: Container  (color: Colors.red,width: context.percentWidth(.5),height: context.percentHeigth(.9)),),
      ),
    );
  }
}

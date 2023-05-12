import 'package:flutter/material.dart' show AppBar, BuildContext, Colors, Container, FloatingActionButton, Scaffold, State, Text, Widget;
import '../../style/colors_apps.dart';
import '../../ui/helpers/loader.dart';
import '../../ui/helpers/messages.dart';
import '../../ui/helpers/size_extensions.dart';




const HomePage({super.key});

@override
State<HomePages> createState() => HomePagesState();




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
        child: Container  (color: context.colors.primary,width: context.percentWidth(.5),height: context.percentHeigth(.9)),),
      
    );
  }
}

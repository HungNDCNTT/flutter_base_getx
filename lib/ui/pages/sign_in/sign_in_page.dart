import 'package:flutter/material.dart';
import 'package:flutter_base_getx/routers/route_config.dart';
import 'package:flutter_base_getx/ui/pages/home/home_page.dart';
import 'package:flutter_base_getx/ui/ui_widgets/buttons/app_button.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Container(
          color: Colors.green,
          child: InkWell(
            onTap: () => Get.to(HomePage()),
            child: Center(
                child: Text(
              'SignIn',
              style: TextStyle(color: Colors.black),
            )),
          ),
        ),
      ),
    );
  }
}

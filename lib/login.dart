import 'package:club/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

List<String> passList = ['123', '321', '987', '423'];

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController codeController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#d5a43b'),
      // floatingActionButton: FloatingActionButton(onPressed: (){},
      // child: const Text('Login Login')
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHight * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/1.jpeg',
                    width: screenWidth * 0.60,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('تطبيق تنظيم النوادي الرياضية')],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: screenWidth * 0.75,
                child: TextFormField(
                  controller: codeController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'User Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: screenWidth * 0.75,
                child: TextFormField(
                  controller: passController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  // var provider = context.read<MainProvider>();

                  // provider.handleBranchesItemsList();

                  // if(provider.branches.contains(codeController.text.trim())){
                  //    await CacheHelper.addStringToCache(key: 'branch', value:codeController.text.trim());
                  //   provider.handleCategoryItemsList();
                  //   // provider.setSelectedCategory(branch:codeController.text,categoryTxt: provider.categoryList?[0] );
                  //   // ignore: use_build_context_synchronously
                  if (passList.contains(passController.text) &&
                      codeController.text.isNotEmpty) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Center(child: Text("Login failed"))));
                  }

                  // }
                  // else{
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Center(child: Text("Login failed"))));
                  // }
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.amberAccent)),
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

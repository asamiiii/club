

import 'package:club/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
TextEditingController codeController = TextEditingController();


@override
  void initState() {
   
    WidgetsBinding.instance.addPostFrameCallback((_)async {
      // var branchName=await CacheHelper.getStringFromCache(key: 'branch');
      // await FirebaseHelper.getItemsFromFirestore(branch: branchName);
    // handleBranchesItemsList();
    //  context.read<MainProvider>().getItems();
    });
    
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHight = MediaQuery.of(context).size.height;
    return   Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: (){},
      // child: const Text('Login Login')
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHight*0.30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                //  Image.asset(ImagePath.logo,width:screenWidth*0.60 ,),
               ],
             ),
             const SizedBox(height: 30,),
             SizedBox(
              width: screenWidth*0.75,
               child:  TextFormField(
                controller: codeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'User Name',
                ),
                       ),
             ),
            const SizedBox(height: 20,),
            SizedBox(
              width: screenWidth*0.75,
               child:  TextFormField(
                controller: codeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
                       ),
             ),
            ElevatedButton(
              onPressed: ()async{
                
                // var provider = context.read<MainProvider>();
                
                // provider.handleBranchesItemsList();
                
                
                // if(provider.branches.contains(codeController.text.trim())){
                //    await CacheHelper.addStringToCache(key: 'branch', value:codeController.text.trim());
                //   provider.handleCategoryItemsList();
                //   // provider.setSelectedCategory(branch:codeController.text,categoryTxt: provider.categoryList?[0] );
                //   // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  Home(branchName:codeController.text.trim()),));
                 
                // }
                // else{
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Center(child: Text("Login failed"))));
                // }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amberAccent)
              ), 
              child:  Text('Login',style:Theme.of(context).textTheme.bodySmall ,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
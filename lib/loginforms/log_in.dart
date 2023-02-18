import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shopping/loginforms/open.dart';
import 'package:shopping/loginforms/register.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LState();
  
}

class _LState extends State<LogInForm> {
  GlobalKey<FormState> formKey= GlobalKey();
  TextEditingController username= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.green.shade200,
              Colors.black54,
            ]
          )
        ),        
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.2
          ),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Container(child: 
                Image.asset("assets/r.png"),
                height: 90,
                width: 90,
                ),            
                Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.2
                  ),
                  child: TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Input field required":null;
                    } ,

                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: ("Username"),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      icon: Icon(Icons.person,
                      color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      )
                    ),
                    
                    
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                 Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.2
                  ),
                ),
                
                 Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.2
                  ),
                  child: TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Input field required":null;
                    } ,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: ("Password"),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      icon: Icon(Icons.lock,
                      color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      )
                    ),
                    
                    
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.35,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                      }
                      
                      
                      
                      Navigator.push(
                        context,
                         MaterialPageRoute(
                          builder: (context)=>OpenNew(),
                         ),
                      );
                    }, 
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.03,
                ),
                TextButton(
                    onPressed: (){
                      
                    },                    
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                TextButton(
                  onPressed: (){
                      Navigator.push(
                        context,
                         MaterialPageRoute(
                          builder: (context)=>RegestForm(),
                         ),
                      );
                    },                    
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
   );
  }
}
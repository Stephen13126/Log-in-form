import 'package:flutter/material.dart';
import 'package:shopping/loginforms/log_in.dart';

class RegestForm extends StatefulWidget {
  const RegestForm({super.key});

  @override
  State<RegestForm> createState() => _LState();
}

class _LState extends State<RegestForm> {
  GlobalKey<FormState> registerKey= GlobalKey();
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
            top: MediaQuery.of(context).size.height*0.1,
          ),
          child: Form(
            key: registerKey,
            child: ListView(
              children: [
                Container(child: 
                Image.asset("assets/r.png"),
                height: 90,
                width: 90,
                ),
                Align(
                  child: Text(
                    " Create your account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: (" Enter Username"),
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
                  child: TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Input field required":null;
                    } ,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: ("E-Mail"),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      icon: Icon(Icons.mail,
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
                  child: TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Input field required":null;
                    } ,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: (" Enter Password"),
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
                  padding:  EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.2
                  ),
                  child: TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Input field required":null;
                    } ,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: ("Confirm Password"),
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
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.2,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                     if(registerKey.currentState!.validate()){
                        
                      }
                    }, 
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.2,
                  ),
                  child: TextButton(
                    onPressed: (){
                       Navigator.push(
                        context,
                         MaterialPageRoute(
                          builder: (context)=>LogInForm(),
                         ),
                      );                     
                    },                    
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
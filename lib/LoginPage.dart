import 'package:demo/HomePage.dart';
import 'package:demo/Responsive.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topRight,
        //       end: Alignment.bottomLeft,
        //       colors: [
        //         Colors.deepPurple,
        //         Colors.deepPurpleAccent,
        //       ],
        //     )
        // ),
        child: Center(
          child: Responsive(

            mobileBody:ListView(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: Row(
                            children: [
                              Text("Hello, \nWelcome Back ",style: Theme.of(context).textTheme.headline4!.apply(color: Colors.black),),
                            ],
                          ),
                        ),
                      const  Padding(
                          padding:  EdgeInsets.only(top: 100.0),
                          child: TextField(
                            // style: TextStyle(color: Colors.white),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black26),
                                label: Text("Email",),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                  // borderSide: BorderSide(width: 1,color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                )
                            ),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(top: 20.0  ),
                          child: TextField(
                            // style: TextStyle(color: Colors.white),
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black26),
                                label: Text("Password",),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                  // borderSide: BorderSide(width: 1,color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                )
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          TextButton(onPressed: (){}, child: Text("Forget Password?",style: TextStyle(color: Colors.black87),))
                        ],),

                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                              height: 50,width:double.infinity,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5))),
                              child: ElevatedButton(onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>HomePage()));
                                  },
                                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                                  child: Text("Login",style: TextStyle(
                                color: Colors.white
                              ),))),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
           desktopBody: Container(height: 100,width: 100,color: Colors.blue,),
          )
        ),
        // child: Image.network("https://www.shutterstock.com/image-vector/background-metal-plates-vector-image-600w-269912339.jpg",

      )
    );
  }
}

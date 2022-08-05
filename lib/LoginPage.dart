import 'package:aap_june_major_project/register.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget{
  const MyLogin ({Key? key}) : super(key :  key);
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35,top: 140),
            child: Text("Welcome Back!",style: TextStyle(color: Colors.red, fontSize: 53, fontWeight:FontWeight.bold),),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
              left: 35, right: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                SizedBox(
                  height: 30,
                ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sign In', style: TextStyle(color: Colors.black , fontWeight: FontWeight.w700, fontSize: 22)),
                      CircleAvatar(
                          radius: 20,backgroundColor: Colors.black,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward),
                        ),
                      ),
                    ],

                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context , new MaterialPageRoute(builder: (context) => new MyRegister()));
                      }, child: Text('Sign Up'), style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade100,
                        textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFF000000), decoration: TextDecoration.underline)//background color of button
                        ),//border width and color
                      ),
                      TextButton(onPressed: (){}, child: Text('Forgot Password?'), style: ElevatedButton.styleFrom(
                          primary: Colors.purple.shade100,
                          textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFF000000), decoration: TextDecoration.underline)//background color of button
                      ),//border width and color
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
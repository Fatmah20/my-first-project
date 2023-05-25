import 'package:app_ra/screens/singup_page.dart';
import 'package:flutter/material.dart';


class SignINPage extends StatelessWidget {
  const SignINPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Spacer(flex: 2,),
          Text('Sing In',style:
          TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF707070),),
          ),
      SizedBox(height: 25,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email,
                            color:  Color(0xFF707070),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color(0xFF707070)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.lock,
                              color: Color(0xFF707070),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color(0xFF707070)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orangeAccent,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            ' Sing In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      'Forget Password ? ',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                    const SizedBox(height: 35),
                    const Center(
                      child: Text(
                        '- OR -',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white38,
                          ),
                          child: Icon(Icons.attach_email_outlined,color: Color(0xFF3b5998),size: 40,),
                        ),
                        const SizedBox(width: 50),
                        Container(
                          width: 90,
                          height: 90,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white38,
                          ),
                          child: Icon(Icons.apple,color: Color(0xFFa6b1b7),size: 40,),
                        ),
                        const SizedBox(width: 50),
                        Container(
                          width: 90,
                          height: 90,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white38,
                          ),
                          child: Icon(Icons.facebook,color: Color(0xFF3b5998),size: 40,),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account ? ',style: TextStyle(color: Color(0xFF707070)),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context){return SignUpPage();}));
                          },
                          child: Text(' Sing Up',style: TextStyle(color: Color(0xFF183beb),
                          ),),
                        ),
                      ],
                    )
                  ],

                ),

              ),
            ),
          ),  Spacer(flex: 1,),
        ],
      ),
    );
  }
}

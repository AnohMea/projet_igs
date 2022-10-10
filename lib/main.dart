import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image:  DecorationImage(image: AssetImage('assets/background.jpg'),fit: BoxFit.cover)
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: const [
                      SizedBox(
                        width: 140,
                        child: Text(
                          "IVOIRE GEEK SCHOOL ",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/ecole.jpg',
                        ),
                        height: 145,
                        width: 145,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText:'Enter your Email' ,
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white),


                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your password',
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 58, 22, 187)),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(

                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(20.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder:(context) => const myForm())
                      );
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                      Text('Login with'),
                      SizedBox(
                          width: 150,
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 32.0,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                        size: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image(
                        image: AssetImage('assets/google.jpg'),
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 32.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children:   [
                       const SizedBox(
                        width: 70,
                      ),
                      const Text(
                        'Dont have an account ?',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const myForm(),));
                          
                         },
                         child: const Text('SignUp') ,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

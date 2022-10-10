import 'package:flutter/material.dart';
import 'package:projet_igs/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet_igs/my_drawer_header.dart';
import 'package:projet_igs/profile.dart';

void main(List<String> args) {}

class myForm extends StatefulWidget {
  const myForm({super.key});

  @override
  State<myForm> createState() => _myFormState();
}

class _myFormState extends State<myForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: const [
                SizedBox(
                  width: 115,
                ),
                Image(
                  image: AssetImage(
                    'assets/person.jpg',
                  ),
                  height: 145,
                  width: 145,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mail',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
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
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Enregistrement'),
                          content: const Text(
                              ('Voulez vous enregistrer vos donnees ?')),
                          actions: [
                            OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("NON"),
                            ),
                            OutlinedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const MyWidget();
                                    },
                                  ));
                                },
                                child: const Text("OUI"))
                          ],
                        ));
              },
              child: const Text('Submit'),
            ),
            const SizedBox(
              height: 15,
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
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                const Text(
                  'have an account?',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyApp(),
                        ));
                  },
                  child: const Text('click to connect'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

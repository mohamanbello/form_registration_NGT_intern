import 'package:flutter/material.dart';
import 'package:registration_form/components/icons.dart';

class AuthPage extends StatelessWidget {
  // final bool? isChecked = true;
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$screenWidth'),
                      //logo
                      const Icon(
                        Icons.lock,
                        size: 50,
                      ),
                      const SizedBox(height: 50),

                      //welcome back
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Sign in into your account by entering your information below',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 25),
                      Form(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: [
                              //Email
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email),
                                    labelText: 'EMAIL'),
                              ),

                              const SizedBox(height: 16),
                              //password
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.password),
                                  labelText: 'PASSWORD',
                                  suffixIcon: Icon(Icons.visibility_off),
                                ),
                              ),
                              const SizedBox(height: 25),
                              //remember me & forgot passwod
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      //remember me
                                      Checkbox(
                                          value: true,
                                          onChanged: (context) {},
                                          activeColor: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                      Text(
                                        'Remember ME',
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      ),
                                    ],
                                  ),
                                  //forgot passwod
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),

                              //sign In Button
                              SizedBox(
                                width: 200,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 18,
                                        height: 2.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              //Create Acount Button
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {
                                    //go to page
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      //Divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Divider(
                              color: Colors.grey[400],
                              thickness: 1.5,
                              indent: 60,
                              endIndent: 5,
                            ),
                          ),
                          Text(
                            'Or sign in with',
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 16),
                          ),
                          Flexible(
                            child: Divider(
                              color: Colors.grey[400],
                              thickness: 1.5,
                              indent: 5,
                              endIndent: 60,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),

                      //google + facebook + twitter sign in buttons
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //google
                          Iconse(imagePath: 'assets/logo/Google.png'),

                          SizedBox(width: 25),

                          //twitter
                          Iconse(imagePath: 'assets/logo/Facebook.png'),
                        ],
                      ),
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

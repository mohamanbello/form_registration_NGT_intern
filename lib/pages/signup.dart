import 'package:flutter/material.dart';
import 'package:registration_form/components/icons.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                'Lets create your account',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              //form
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person),
                                  labelText: 'First Name'),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person),
                                  labelText: 'Last Name'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      //username
                      TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            labelText: 'User Name'),
                      ),
                      const SizedBox(height: 16),
                      //Email
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.mail_outline),
                            labelText: 'Email'),
                      ),
                      const SizedBox(height: 16),
                      //phoneNumber
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.phone),
                            labelText: 'Phone Number'),
                      ),
                      const SizedBox(height: 16),
                      //password
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.visibility_off)),
                      ),
                      const SizedBox(height: 16),

                      //term&condition

                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: true,
                              onChanged: (value) {},
                              activeColor:
                                  Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Text.rich(
                            TextSpan(
                              text: 'I Agree To terms and conditions',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      //sign up button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),
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
                    style: TextStyle(color: Colors.grey[400], fontSize: 16),
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
              const SizedBox(height: 8),

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
          ),
        ),
      ),
    );
  }
}

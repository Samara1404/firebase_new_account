import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    Key? key,
    required this.onAuth,
    required this.authButtonText,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final VoidCallback onAuth;
  final String authButtonText;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'enter your email',
              hintText: 'cofee@free.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'enter your password',
              hintText: '123456',
              //  obscureText: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
            SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'enter your telegram',
              hintText: '@cofeefree',
              //  obscureText: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
            SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Link to Github',
              hintText: 'https://github.com/Samara1404',
              //  obscureText: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
            SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Link to YouTube',
              hintText: 'https://youtu.be/2rJpKqbeuC0?si=Rk8lhIAWwyrNtr6Q',
              //  obscureText: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
            SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Link to Linkedin',
              hintText: '',
              //  obscureText: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            child: Text(authButtonText),
            onPressed: onAuth,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton.icon(
            icon: Image.network(
                'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-32.png'),
            label: const Text('Sign in with Google'),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

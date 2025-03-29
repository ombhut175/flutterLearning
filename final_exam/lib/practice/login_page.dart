import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for Image
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Placeholder(),
            ),
            const SizedBox(height: 40),

            // Login TextField
            TextField(
              decoration: InputDecoration(
                labelText: "Login",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Password TextField
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Forgot Password
            TextButton(
              onPressed: () {},
              child: Text("Forgot Password?", style: TextStyle(color: Colors.black54)),
            ),
            const SizedBox(height: 10),

            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[400],
                minimumSize: Size(double.infinity, 50),
              ),
              child: const Text("Login"),
            ),
            const SizedBox(height: 10),

            // OR Text
            const Text("Or", style: TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 10),

            // Facebook Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[400],
                minimumSize: Size(double.infinity, 50),
              ),
              child: const Text("Login with Facebook"),
            ),
            const SizedBox(height: 20),

            // Signup Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New to app?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Signup", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

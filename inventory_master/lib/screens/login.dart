import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b2b2b), // dark outer background
      body: Center(
        child: Container(
          width: 340,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
            color: Color(0xffded8b6), // card background
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              /// LOGO + TITLE
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.store, color: Colors.orange, size: 30),
                  ),
                  SizedBox(width: 10),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [Colors.orange, Colors.brown],
                    ).createShader(bounds),
                    child: Text(
                      "Inventory Master",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 30),

              /// WELCOME TEXT
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: 25),

              /// EMAIL FIELD
              TextField(
                decoration: InputDecoration(
                  hintText: "Email / Username",
                  filled: true,
                  fillColor: Colors.white70,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 15),

              /// PASSWORD FIELD
              TextField(
                obscureText: hidePassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Colors.white70,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      hidePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                ),
              ),

              SizedBox(height: 25),

              /// LOGIN BUTTON
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff58642),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => DashboardPage()),
                    );
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 18),

              /// FORGOT PASSWORD
              Text(
                "Forgot password?",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
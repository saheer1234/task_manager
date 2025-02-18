import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/utils/app_colors.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up-screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  Text(
                    'Join With Us',
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _firstNameTEController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'First name',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameTEController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Last name',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _mobileTEController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Mobile',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_forward),
                  ),
                  const SizedBox(height: 48),
                  Center(
                    child: _buildSignInSection(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                          children: [
                          TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                              color: AppColors.themeColor,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.pop(context);
                            }
                          ),
                        ],
                      ),
                    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}

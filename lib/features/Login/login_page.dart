import 'package:flutter/material.dart';
import 'package:projetopet/common/constants/app_colors.dart';
import 'package:projetopet/common/constants/app_text_styles.dart';
import 'package:projetopet/common/constants/widgets/custom_border.dart';
import 'package:projetopet/common/constants/widgets/password_field.dart';
import 'package:projetopet/common/constants/widgets/second_button.dart';
import 'package:projetopet/features/Login/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: AppColors.orangeGradient,
              stops: const [0.0, 0.5, 1.0],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/Image/logochefe.png',
                    width: 315,
                    height: 315,
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Center(
                        child: Text(
                          'Login',
                          style: AppTextStyles.textAll.copyWith(
                            color: AppColors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: CustomBorder.build('Email'),
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: AppColors.white),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Digite seu email';
                            }
                            if (!RegExp(
                              r'^[^@]+@[^@]+\.[^@]+',
                            ).hasMatch(value)) {
                              return 'Email inválido';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 30),
                        PasswordField(
                          label: 'Senha',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Digite sua senha';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SecondButton(text: 'Entrar', onPressed: () {}),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Não tem uma conta? ',
                            style: AppTextStyles.textAll.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Registrar',
                            style: AppTextStyles.textAll.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

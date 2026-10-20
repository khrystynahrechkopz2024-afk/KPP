import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  final Function(String)? onNavigate;

  const LoginScreen({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgLight,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Top Briefcase Logo
              Container(
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                  color: const Color(0xFFE0F2FE),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.work_outline,
                  color: AppTheme.primaryBlue,
                  size: 34,
                ),
              ),
              const SizedBox(height: 24),

              // Title and Subtitle
              const Text(
                'З поверненням!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: AppTheme.primaryDark,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Увійдіть, щоб продовжити пошук нової можливості.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: AppTheme.textSecondary,
                    height: 1.3,
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Email field
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.primaryDark,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                style: const TextStyle(fontSize: 15, color: AppTheme.primaryDark),
                decoration: const InputDecoration(
                  hintText: 'example@gmail.com',
                  prefixIcon: Icon(Icons.mail_outline, color: AppTheme.textSecondary, size: 20),
                ),
              ),
              const SizedBox(height: 16),

              // Password field
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Пароль',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.primaryDark,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                style: const TextStyle(fontSize: 15, color: AppTheme.primaryDark),
                decoration: const InputDecoration(
                  hintText: 'Введіть пароль',
                  prefixIcon: Icon(Icons.lock_outline, color: AppTheme.textSecondary, size: 20),
                  suffixIcon: Icon(Icons.visibility_off_outlined, color: AppTheme.textSecondary, size: 20),
                ),
              ),
              const SizedBox(height: 14),

              // Remember me & Forgot Password row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          value: true,
                          onChanged: (_) {},
                          activeColor: AppTheme.primaryBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Запам\'ятати мене',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      if (onNavigate != null) onNavigate!('forgot_step1');
                    },
                    child: const Text(
                      'Забули пароль?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryBlue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Action Button
              ElevatedButton(
                onPressed: () {
                  if (onNavigate != null) onNavigate!('home');
                },
                child: const Text('Увійти'),
              ),
              const SizedBox(height: 48),

              // Bottom Security Note
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shield_outlined,
                    color: Color(0xFF94A3B8),
                    size: 18,
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Ваші дані надійно захищені',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF94A3B8),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Navigation Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Ще не з нами? ',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (onNavigate != null) onNavigate!('register');
                    },
                    child: const Text(
                      'Створити акаунт',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryBlue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

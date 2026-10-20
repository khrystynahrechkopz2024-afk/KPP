import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class RegisterScreen extends StatelessWidget {
  final Function(String)? onNavigate;

  const RegisterScreen({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgLight,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              
              // Top Header with Logo
              Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.work_outline,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Job Tracker',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryDark,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              // Title and Subtitle
              const Text(
                'Створіть акаунт',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: AppTheme.primaryDark,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Зберігайте вакансії, інтерв\'ю та офери в одному зручному місці.',
                style: TextStyle(
                  fontSize: 15,
                  color: AppTheme.textSecondary,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 24),

              // Email field
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryDark,
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
              const Text(
                'Пароль',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryDark,
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
              const SizedBox(height: 16),

              // Confirm password field
              const Text(
                'Підтвердження пароля',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryDark,
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                style: const TextStyle(fontSize: 15, color: AppTheme.primaryDark),
                decoration: const InputDecoration(
                  hintText: 'Повторіть пароль',
                  prefixIcon: Icon(Icons.lock_outline, color: AppTheme.textSecondary, size: 20),
                  suffixIcon: Icon(Icons.visibility_off_outlined, color: AppTheme.textSecondary, size: 20),
                ),
              ),
              const SizedBox(height: 36),

              // Action Button
              ElevatedButton(
                onPressed: () {
                  if (onNavigate != null) onNavigate!('home');
                },
                child: const Text('Створити акаунт'),
              ),
              const SizedBox(height: 20),

              // Link to Login
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Вже маєте акаунт? ',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (onNavigate != null) onNavigate!('login');
                      },
                      child: const Text(
                        'Увійти',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              // Bottom Disclaimer
              const Center(
                child: Text(
                  'Створюючи акаунт, ви погоджуєтеся з умовами користування.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF94A3B8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

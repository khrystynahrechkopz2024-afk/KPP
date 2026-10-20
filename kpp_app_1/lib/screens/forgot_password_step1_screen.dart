import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ForgotPasswordStep1Screen extends StatelessWidget {
  final Function(String)? onNavigate;

  const ForgotPasswordStep1Screen({super.key, this.onNavigate});

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

              // Navigation Top Bar
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (onNavigate != null) onNavigate!('login');
                    },
                    borderRadius: BorderRadius.circular(24),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppTheme.cardBorder),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppTheme.primaryDark,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Відновлення паролю',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryDark,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Особисті дані й безпека',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),

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
              const SizedBox(height: 20),

              // Send Code Button
              ElevatedButton(
                onPressed: () {
                  if (onNavigate != null) onNavigate!('forgot_step2');
                },
                child: const Text('Надіслати код'),
              ),
              const SizedBox(height: 32),

              // Enter code title
              const Center(
                child: Text(
                  'Введіть код з повідомлення',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.primaryDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Code Boxes Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppTheme.cardBorder, width: 1.5),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

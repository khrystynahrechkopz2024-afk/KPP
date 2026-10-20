import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/status_banner.dart';

class ForgotPasswordStep2Screen extends StatelessWidget {
  final Function(String)? onNavigate;

  const ForgotPasswordStep2Screen({super.key, this.onNavigate});

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
                      if (onNavigate != null) onNavigate!('forgot_step1');
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
              const SizedBox(height: 24),

              // Reusable Success Banner Widget
              const StatusBanner(
                text: 'Дані перевірено.',
              ),
              const SizedBox(height: 24),

              // Enter new password field
              const Text(
                'Введіть новий пароль',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryDark,
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                initialValue: '••••••••••',
                obscureText: true,
                style: const TextStyle(fontSize: 15, color: AppTheme.primaryDark),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: AppTheme.textSecondary, size: 20),
                  suffixIcon: Icon(Icons.visibility_off_outlined, color: AppTheme.textSecondary, size: 20),
                ),
              ),
              const SizedBox(height: 16),

              // Confirm password field
              const Text(
                'Підтвердіть пароль',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryDark,
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                initialValue: '••••••••••',
                obscureText: true,
                style: const TextStyle(fontSize: 15, color: AppTheme.primaryDark),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: AppTheme.textSecondary, size: 20),
                  suffixIcon: Icon(Icons.visibility_off_outlined, color: AppTheme.textSecondary, size: 20),
                ),
              ),
              const SizedBox(height: 10),

              // Green validation items
              const Text(
                'Паролі збігаються',
                style: TextStyle(
                  fontSize: 13,
                  color: AppTheme.successGreen,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              const Row(
                children: [
                  Icon(Icons.check_circle_outline, color: AppTheme.successGreen, size: 18),
                  SizedBox(width: 8),
                  Text(
                    'Щонайменше 8 символів і одна цифра',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36),

              // Action button
              ElevatedButton(
                onPressed: () {
                  if (onNavigate != null) onNavigate!('login');
                },
                child: const Text('Увійти'),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

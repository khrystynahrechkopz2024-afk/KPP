import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/stat_card.dart';
import '../widgets/vacancy_card.dart';
import '../widgets/app_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  final Function(String)? onNavigate;

  const HomeScreen({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgLight,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),

              // Top User Header Row
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE0F2FE),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        'ОМ',
                        style: TextStyle(
                          color: AppTheme.primaryBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'П\'ятниця, 25 вересня',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppTheme.textSecondary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Привіт, Олено',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: AppTheme.primaryDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppTheme.cardBorder),
                    ),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: AppTheme.primaryBlue,
                      size: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Progress Section Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Ваш прогрес',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryDark,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'За 30 днів',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.primaryBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),

              // 3 Reusable Stat Cards Row
              const Row(
                children: [
                  StatCard(
                    icon: Icons.near_me_outlined,
                    iconBg: Color(0xFFE0F2FE),
                    iconColor: AppTheme.primaryBlue,
                    number: '24',
                    label: 'Подано',
                  ),
                  SizedBox(width: 12),
                  StatCard(
                    icon: Icons.calendar_today_outlined,
                    iconBg: AppTheme.orangeBadgeBg,
                    iconColor: AppTheme.orangeBadgeText,
                    number: '6',
                    label: 'Співбесіди',
                  ),
                  SizedBox(width: 12),
                  StatCard(
                    icon: Icons.auto_awesome_outlined,
                    iconBg: AppTheme.successBg,
                    iconColor: AppTheme.successGreen,
                    number: '2',
                    label: 'Офери',
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Notification Blue Banner Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(51),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 нові сповіщення',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Завтра співбесіда з BrightTech',
                            style: TextStyle(
                              color: Color(0xFFE0F2FE),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Recent Vacancies Section Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Нещодавні вакансії',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryDark,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Усі вакансії',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.primaryBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),

              // Reusable Vacancy Cards
              const VacancyCard(
                title: 'Product Designer',
                company: 'BrightTech · 24 вер.',
                statusText: 'Співбесіда',
                statusBg: AppTheme.orangeBadgeBg,
                statusTextColor: AppTheme.orangeBadgeText,
              ),
              const SizedBox(height: 12),
              const VacancyCard(
                title: 'Senior UX Designer',
                company: 'Lumen Labs · 22 вер.',
                statusText: 'Тестове',
                statusBg: AppTheme.purpleBadgeBg,
                statusTextColor: AppTheme.purpleBadgeText,
              ),
              const SizedBox(height: 12),
              const VacancyCard(
                title: 'UI/UX Designer',
                company: 'NovaPay · 19 вер.',
                statusText: 'Перегляд',
                statusBg: AppTheme.blueBadgeBg,
                statusTextColor: AppTheme.blueBadgeText,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(
        selectedIndex: 0,
        onNavigate: onNavigate,
      ),
    );
  }
}

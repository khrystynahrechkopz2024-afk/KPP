import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AppBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(String)? onNavigate;

  const AppBottomNavBar({
    super.key,
    required this.selectedIndex,
    this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: AppTheme.cardBorder, width: 1),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_outlined, Icons.home, 'Головна', selectedIndex == 0, () {
            if (onNavigate != null) onNavigate!('home');
          }),
          _buildNavItem(Icons.work_outline, Icons.work, 'Вакансії', selectedIndex == 1, () {}),
          _buildNavItem(Icons.apartment_outlined, Icons.apartment, 'Компанії', selectedIndex == 2, () {}),
          _buildNavItem(Icons.calendar_today_outlined, Icons.calendar_today, 'Зустрічі', selectedIndex == 3, () {}),
          _buildNavItem(Icons.person_outline, Icons.person, 'Профіль', selectedIndex == 4, () {
            if (onNavigate != null) onNavigate!('profile');
          }),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, IconData activeIcon, String label, bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
              decoration: isSelected
                  ? BoxDecoration(
                      color: const Color(0xFFE0F2FE),
                      borderRadius: BorderRadius.circular(16),
                    )
                  : null,
              child: Icon(
                isSelected ? activeIcon : icon,
                color: isSelected ? AppTheme.primaryBlue : AppTheme.textSecondary,
                size: 22,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected ? AppTheme.primaryBlue : AppTheme.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

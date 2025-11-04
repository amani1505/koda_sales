import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;
  final int animationDelay;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    this.animationDelay = 0,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: Duration(milliseconds: animationDelay),
      duration: const Duration(milliseconds: 800),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.grey.shade50,
            ],
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 8),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border.all(
            color: Colors.grey.shade100,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    value,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        color.withOpacity(0.15),
                        color.withOpacity(0.05),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: color.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    icon,
                    color: color,
                    size: 28,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(height: 4),
            Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color.withOpacity(0.8), color.withOpacity(0.3)],
                ),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

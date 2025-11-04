import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/storage_service.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;
  late Animation<double> _logoAnimation;
  late Animation<double> _textAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _navigateAfterDelay();
  }

  void _initializeAnimations() {
    _logoController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _textController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _logoAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _logoController,
      curve: Curves.elasticOut,
    ));

    _textAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _textController,
      curve: Curves.easeOutBack,
    ));

    _logoController.forward();
    Future.delayed(const Duration(milliseconds: 500), () {
      _textController.forward();
    });
  }

  Future<void> _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      final isFirstTime = await StorageService.getBool('first_time') ?? true;
      final isLoggedIn = await StorageService.getBool('is_logged_in') ?? false;
      
      if (isFirstTime) {
        context.go('/onboarding');
      } else if (isLoggedIn) {
        context.go('/');
      } else {
        context.go('/login');
      }
    }
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.primaryColor,
              AppTheme.secondaryColor,
              AppTheme.accentColor,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _logoAnimation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _logoAnimation.value,
                    child: FadeIn(
                      duration: const Duration(milliseconds: 1500),
                      child: Container(
                        width: 120.w,
                        height: 120.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.message_rounded,
                          size: 60.sp,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 30.h),
              AnimatedBuilder(
                animation: _textAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, 20 * (1 - _textAnimation.value)),
                    child: Opacity(
                      opacity: _textAnimation.value.clamp(0.0, 1.0),
                      child: Column(
                        children: [
                          SlideInUp(
                            delay: const Duration(milliseconds: 800),
                            child: Text(
                              'Koda Sales',
                              style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          SlideInUp(
                            delay: const Duration(milliseconds: 1000),
                            child: Text(
                              'SMS Management Made Simple',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white.withOpacity(0.9),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 60.h),
              FadeInUp(
                delay: const Duration(milliseconds: 1500),
                child: SizedBox(
                  width: 40.w,
                  height: 40.h,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
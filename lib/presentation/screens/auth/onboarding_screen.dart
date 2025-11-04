import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/storage_service.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingData> _onboardingData = [
    OnboardingData(
      icon: Icons.message_rounded,
      title: 'Manage SMS Communications',
      description: 'Send and receive SMS messages efficiently with our comprehensive management system.',
      color: AppTheme.primaryColor,
    ),
    OnboardingData(
      icon: Icons.people_outline,
      title: 'Organize Your Customers',
      description: 'Keep track of all your customers and their information in one centralized location.',
      color: AppTheme.secondaryColor,
    ),
    OnboardingData(
      icon: Icons.analytics_outlined,
      title: 'Track Performance',
      description: 'Monitor your messaging campaigns and customer engagement with detailed analytics.',
      color: AppTheme.accentColor,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _finishOnboarding();
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _finishOnboarding() async {
    await StorageService.setBool('first_time', false);
    if (mounted) {
      context.go('/login');
    }
  }

  void _skipOnboarding() {
    _finishOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              _onboardingData[_currentPage].color,
              _onboardingData[_currentPage].color.withOpacity(0.8),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeInLeft(
                      child: TextButton(
                        onPressed: _currentPage > 0 ? _previousPage : null,
                        child: Text(
                          _currentPage > 0 ? 'Back' : '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    FadeInRight(
                      child: TextButton(
                        onPressed: _skipOnboarding,
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: _onboardingData.length,
                  itemBuilder: (context, index) {
                    return _buildOnboardingPage(_onboardingData[index]);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    FadeInUp(
                      delay: Duration(milliseconds: 200 + (_currentPage * 100)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _onboardingData.length,
                          (index) => _buildPageIndicator(index),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: SlideInUp(
                        delay: Duration(milliseconds: 400 + (_currentPage * 100)),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50.h,
                          child: ElevatedButton(
                            onPressed: _nextPage,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: _onboardingData[_currentPage].color,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              elevation: 8,
                            ),
                            child: Text(
                              _currentPage == _onboardingData.length - 1
                                  ? 'Get Started'
                                  : 'Continue',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(OnboardingData data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 800),
            child: Container(
              width: 150.w,
              height: 150.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(75.r),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                  width: 2,
                ),
              ),
              child: Icon(
                data.icon,
                size: 80.sp,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 50.h),
          FadeInUp(
            delay: const Duration(milliseconds: 400),
            child: Text(
              data.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.2,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          FadeInUp(
            delay: const Duration(milliseconds: 600),
            child: Text(
              data.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white.withOpacity(0.9),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: _currentPage == index ? 24.w : 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? Colors.white
            : Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(4.r),
      ),
    );
  }
}

class OnboardingData {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  OnboardingData({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/storage_service.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;
  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      
      // Save login state
      await StorageService.setBool('is_logged_in', true);
      if (_rememberMe) {
        await StorageService.setString('email', _emailController.text);
      }

      if (mounted) {
        context.go('/');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed: ${e.toString()}'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.primaryColor,
              AppTheme.secondaryColor,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                FadeInDown(
                  duration: const Duration(milliseconds: 800),
                  child: Column(
                    children: [
                      Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.message_rounded,
                          size: 50.sp,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Sign in to your account',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                FadeInUp(
                  delay: const Duration(milliseconds: 400),
                  child: Container(
                    padding: EdgeInsets.all(24.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SlideInLeft(
                            delay: const Duration(milliseconds: 600),
                            child: TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: _validateEmail,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                prefixIcon: const Icon(Icons.email_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          SlideInRight(
                            delay: const Duration(milliseconds: 800),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: !_isPasswordVisible,
                              validator: _validatePassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                prefixIcon: const Icon(Icons.lock_outline),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SlideInUp(
                            delay: const Duration(milliseconds: 1000),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = value ?? false;
                                    });
                                  },
                                  activeColor: AppTheme.primaryColor,
                                ),
                                Text(
                                  'Remember me',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppTheme.textSecondary,
                                  ),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {
                                    // Handle forgot password
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppTheme.primaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.h),
                          FadeInUp(
                            delay: const Duration(milliseconds: 1200),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50.h,
                              child: ElevatedButton(
                                onPressed: _isLoading ? null : _handleLogin,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppTheme.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                ),
                                child: _isLoading
                                    ? SizedBox(
                                        width: 24.w,
                                        height: 24.h,
                                        child: const CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor: AlwaysStoppedAnimation<Color>(
                                            Colors.white,
                                          ),
                                        ),
                                      )
                                    : Text(
                                        'Sign In',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                FadeInUp(
                  delay: const Duration(milliseconds: 1400),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                FadeInUp(
                  delay: const Duration(milliseconds: 1600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSocialButton(
                        icon: Icons.g_mobiledata,
                        onTap: () {
                          // Handle Google login
                        },
                      ),
                      _buildSocialButton(
                        icon: Icons.facebook,
                        onTap: () {
                          // Handle Facebook login
                        },
                      ),
                      _buildSocialButton(
                        icon: Icons.apple,
                        onTap: () {
                          // Handle Apple login
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                FadeInUp(
                  delay: const Duration(milliseconds: 1800),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14.sp,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to sign up
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Icon(
          icon,
          size: 30.sp,
          color: AppTheme.textPrimary,
        ),
      ),
    );
  }
}
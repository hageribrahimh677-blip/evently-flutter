import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class PersonalizeScreen extends StatefulWidget {
  const PersonalizeScreen({super.key});

  @override
  State<PersonalizeScreen> createState() => _PersonalizeScreenState();
}

class _PersonalizeScreenState extends State<PersonalizeScreen> {
  String _selectedLanguage = 'English';
  bool _isDarkTheme = false;

  void _goToOnboarding() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'EVENTLY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF0D1B4C),
                ),
              ),
              const Spacer(),
              const Text(
                'Personalize Your Experience',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                'Choose your preferred language and appearance to get a comfortable, personalized experience with the app.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 40),

              // اختيار اللغة
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Language',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(8),
                    isSelected: [
                      _selectedLanguage == 'English',
                      _selectedLanguage == 'Arabic',
                    ],
                    onPressed: (index) {
                      setState(() {
                        _selectedLanguage = index == 0 ? 'English' : 'Arabic';
                      });
                    },
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('English'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Arabic'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // اختيار الثيم
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Theme',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  Switch(
                    value: _isDarkTheme,
                    onChanged: (value) {
                      setState(() => _isDarkTheme = value);
                    },
                  ),
                ],
              ),

              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D1B4C),
                  ),
                  onPressed: _goToOnboarding,
                  child: const Text(
                    "Let's start",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:center/core/styles/colors_manager.dart';
import 'package:center/core/routing/routes.dart';
import 'package:center/features/auth/widgets/auth_button.dart';
import 'package:center/features/select_track/select_track_screen.dart';
import 'package:center/features/settings/model/grade_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:center/core/localization/app_locale.dart';

class SelectGradeScreen extends StatefulWidget {
  const SelectGradeScreen({super.key});

  @override
  State<SelectGradeScreen> createState() => _SelectGradeScreenState();
}

class _SelectGradeScreenState extends State<SelectGradeScreen> {
  int selectedIndex = 0;

  String _getLocalizedGradeTitle(String key, BuildContext context) {
    switch (key) {
      case 'first_year':
        return AppLocale.firstYear.getString(context);
      case 'second_year':
        return AppLocale.secondYear.getString(context);
      case 'third_year':
        return AppLocale.thirdYear.getString(context);
      default:
        return key;
    }
  }

  String _getLocalizedGradeSubtitle(String key, BuildContext context) {
    switch (key) {
      case 'secondary_education':
        return AppLocale.secondaryEducation.getString(context);
      case 'thanaweya_amma':
        return AppLocale.thanaweyaAmma.getString(context);
      default:
        return key;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFEEF4FF), ColorsManager.primaryColor],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                    const Spacer(),
                    Text(
                      AppLocale.stepOneOfThree.getString(context),
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: 0.33,
                    minHeight: 6,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.lightBlue,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  AppLocale.whichGradeAreYouIn.getString(context),
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                Text(
                  AppLocale.gradeHelpText.getString(context),
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),

                const SizedBox(height: 24),

                Expanded(
                  child: ListView.builder(
                    itemCount: grades.length,
                    itemBuilder: (context, index) {
                      final isSelected = selectedIndex == index;

                      // Get localized grade data
                      String localizedTitle = _getLocalizedGradeTitle(
                        grades[index]['title']!,
                        context,
                      );
                      String localizedSubtitle = _getLocalizedGradeSubtitle(
                        grades[index]['subtitle']!,
                        context,
                      );

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: isSelected
                                  ? Colors.lightBlue
                                  : Colors.transparent,
                              width: 2,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Colors.lightBlue.shade50
                                      : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  grades[index]['number']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: isSelected
                                        ? Colors.lightBlue
                                        : Colors.grey,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 16),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      localizedTitle,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      localizedSubtitle,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Icon(
                                isSelected
                                    ? Icons.check_circle
                                    : Icons.radio_button_unchecked,
                                color: isSelected
                                    ? Colors.lightBlue
                                    : Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                AppButton(
                  title: AppLocale.nextStep.getString(context),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.selectTrack);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

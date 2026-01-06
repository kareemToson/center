import 'package:center/core/localization/app_locale.dart';
import 'package:center/core/styles/colors_manager.dart';
import 'package:center/features/auth/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class SelectTrackScreen extends StatefulWidget {
  const SelectTrackScreen({super.key});

  @override
  State<SelectTrackScreen> createState() => _SelectTrackScreenState();
}

class _SelectTrackScreenState extends State<SelectTrackScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEEF4FF), ColorsManager.primaryColor],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const Spacer(),
                    Text(
                      AppLocale.stepTwoOfTwo.getString(context),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.lightBlue,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: 1,
                    minHeight: 6,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.lightBlue,
                    ),
                  ),
                ),

                /// Step label
                const SizedBox(height: 15),

                /// Title
                Text(
                  AppLocale.selectYourTrack.getString(context),
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 3),

                /// Subtitle
                Text(
                  AppLocale.trackSubtitle.getString(context),
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),

                const SizedBox(height: 80),

                /// Cards
                Row(
                  children: List.generate(
                    _getLocalizedTracks(context).length * 2 - 1,
                    (i) {
                      if (i.isOdd) {
                        return const SizedBox(width: 12); // المسافة بين الكاردز
                      }

                      final index = i ~/ 2;
                      final isSelected = selectedIndex == index;
                      final track = _getLocalizedTracks(context)[index];

                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
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
                            child: Column(
                              children: [
                                /// Check icon
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    isSelected
                                        ? Icons.check_circle
                                        : Icons.radio_button_unchecked,
                                    color: isSelected
                                        ? Colors.lightBlue
                                        : Colors.grey.shade400,
                                  ),
                                ),

                                const SizedBox(height: 16),

                                /// Icon circle
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.lightBlue.shade50
                                        : Colors.grey.shade200,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    track['icon'] == 'science'
                                        ? Icons.science_outlined
                                        : Icons.menu_book_outlined,
                                    size: 34,
                                    color: isSelected
                                        ? Colors.lightBlue
                                        : Colors.grey,
                                  ),
                                ),

                                const SizedBox(height: 20),

                                /// Title
                                Text(
                                  track['title']!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                const SizedBox(height: 6),

                                /// Subtitle
                                Text(
                                  track['subtitle']!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Spacer(),
                AppButton(
                  title: AppLocale.continueString.getString(context),
                  onPressed: () {
                    //home screen
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Map<String, String>> _getLocalizedTracks(BuildContext context) {
    return [
      {
        'title': AppLocale.scientificTrack.getString(context),
        'subtitle': AppLocale.scientificTrackAr.getString(context),
        'icon': 'science',
      },
      {
        'title': AppLocale.literaryTrack.getString(context),
        'subtitle': AppLocale.literaryTrackAr.getString(context),
        'icon': 'book',
      },
    ];
  }
}

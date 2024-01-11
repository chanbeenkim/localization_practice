import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isChanged = false;
  void onKrPressed() {
    setState(() {
      EasyLocalization.of(context)!.setLocale(
        const Locale('ko'),
      );
      _isChanged = false;
    });
  }

  void onEnPressed() {
    setState(() {
      EasyLocalization.of(context)!.setLocale(
        const Locale('en'),
      );
      _isChanged = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        elevation: 0,
        title: const Text('title').tr(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tr('hello'),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: () {
                _isChanged ? onKrPressed() : onEnPressed();
              },
              icon: const Icon(
                Icons.language_outlined,
                color: Colors.black,
              ),
              label: Text(
                _isChanged ? 'korean'.tr() : 'english'.tr(),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

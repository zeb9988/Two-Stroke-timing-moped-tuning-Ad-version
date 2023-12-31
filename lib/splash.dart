import 'dart:async';
import 'dart:io';
// import 'dart:math';

// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:turingg/adhelper.dart';
import 'package:turingg/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  InterstitialAd? interstitialAd;

  @override
  void initState() {
    super.initState();
    _loadAdAndNavigate();
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MultiplierApp()),
      );
    });
  }

  Future<void> _loadAdAndNavigate() async {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-8223568809169348/2529594525',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          ad.show();

          interstitialAd?.fullScreenContentCallback =
              FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
            // interstitialAd?.dispose();
            // ad.dispose();

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => MultiplierApp(),
            //   ),
            // );
          }, onAdFailedToShowFullScreenContent: (ad, err) {
            ad.dispose();
            interstitialAd?.dispose();
          });
        },
        onAdFailedToLoad: (err) {
          interstitialAd?.dispose();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

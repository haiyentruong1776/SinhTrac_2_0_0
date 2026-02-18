import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// const String APP_ID = "ca-app-pub-8790092287859946~9130610364";

const String BANNER_ID = "ca-app-pub-8790092287859946/3914437546";
const String INTERSTITIAL_ID = "ca-app-pub-8790092287859946/2601355877";
// const String REWARDED_ID = "ca-app-pub-8790092287859946/4996107354";

const String testDevice = 'YOUR_DEVICE_ID';
const int maxFailedLoadAttempts = 3;

class AdHelpers {
  // static double marginTopForAdmobBanner = 0;

  static final AdRequest request = AdRequest(nonPersonalizedAds: true);

  static InterstitialAd? _interstitialAd;

  static Future<void> initialize(BuildContext context) async {
    await MobileAds.instance.initialize();
    await MobileAds.instance
        .updateRequestConfiguration(RequestConfiguration(testDeviceIds: [testDevice]));
    _loadInterstitialAd();
  }

  // static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo();

  static void hideBannerAd() async {
    // if (_bannerAd != null) {
    //   await _bannerAd.dispose();
    //   _bannerAd = null;
    // }
  }

  static void showInterstitialAd() => _interstitialAd?.show();

  static Future<void> _loadInterstitialAd() async {
    await InterstitialAd.load(
        adUnitId: INTERSTITIAL_ID,
        request: request,
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            debugPrint('$ad loaded');
            _interstitialAd = ad;
            _interstitialAd!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: ${error.message}.');
            _interstitialAd = null;
          },
        ));
  }

  static Future<void> showInterstitialAdRandom() async {
    if ((new Random()).nextInt(100) < 30) {
      loadShowInterstitialAd();
    }
  }

  static Future<void> loadShowInterstitialAd() async {
    if (_interstitialAd == null) {
      debugPrint('Warning: attempt to show interstitial before loaded.');
      await _loadInterstitialAd();
    }
    _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          debugPrint('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        debugPrint('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        debugPrint('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
      },
    );
    _interstitialAd!.show().whenComplete(() => _interstitialAd = null);
  }

  // static void showRewaredVideoAd() {
  //   RewardedVideoAd.instance
  //       .load(adUnitId: REWARDED_ID, targetingInfo: targetingInfo);
  //   RewardedVideoAd.instance.listener =
  //       (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
  //     if (event == RewardedVideoAdEvent.loaded) {
  //       RewardedVideoAd.instance.show();
  //     }
  //   };
  // }
}

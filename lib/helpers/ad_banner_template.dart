import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';

class AdBannerTemplate extends StatefulWidget {
  const AdBannerTemplate({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<AdBannerTemplate> createState() => _AdBannerTemplateState();
}

class _AdBannerTemplateState extends State<AdBannerTemplate> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  @override
  void didChangeDependencies() {
    _loadBannerAd();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Stack(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: _bannerAd?.size.height.toDouble() ?? 0.0),
            child: widget.child,
          ),
          if (_isLoaded)
            Container(
              alignment: Alignment.topCenter,
              width: _bannerAd?.size.width.toDouble(),
              height: _bannerAd!.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd!),
            ),
        ],
      );
    });
  }

  Future<void> _loadBannerAd() async {
    await _bannerAd?.dispose();
    setState(() {
      _bannerAd = null;
      _isLoaded = false;
    });

    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MediaQuery.of(context).size.width.truncate());

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    _bannerAd = BannerAd(
      adUnitId: BANNER_ID,
      size: size,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          print('$ad loaded: ${ad.responseInfo}');
          // When the ad is loaded, get the ad size and use it to set
          // the height of the ad container.
          setState(() {
            // When the ad is loaded, get the ad size and use it to set
            // the height of the ad container.
            _bannerAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('Anchored adaptive banner failedToLoad: $error');
          ad.dispose();
        },
      ),
    );
    await _bannerAd!.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }
}

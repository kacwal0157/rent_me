import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/constants/constant_images.dart';
import 'package:rent_me/constants/constant_sizes.dart';

class OfferWidget extends StatefulWidget {
  const OfferWidget({super.key});

  @override
  State<OfferWidget> createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("open offert");
      },
      child: Container(
        width: double.infinity,
        height: defaultOfferBlockHeight,
        margin: const EdgeInsets.only(bottom: defaultOfferBlockMargin),
        padding: const EdgeInsets.all(defaultPadding - 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(defaultContainerBorderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppManager.appSize.height * 0.225,
                  width: AppManager.appSize.width * 0.56,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(defaultContainerBorderRadius),
                    image: const DecorationImage(
                      image: AssetImage(carImageOne),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: defaultPadding - 10,
                    left: defaultPadding + 5,
                  ),
                  child: Column(
                    children: [
                      _createRichTextWidget('1000zł', 'Dzień'),
                      const SizedBox(
                        height: spaceSizedBoxHeight,
                      ),
                      _createRichTextWidget('6500zł', 'Tydzień'),
                      const SizedBox(
                        height: spaceSizedBoxHeight,
                      ),
                      _createRichTextWidget('Kraków', 'Małopolska'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: spaceSizedBoxHeight - 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding - 10),
              width: 300,
              child: Text(
                "Mercedes-Benz AMG GT Klasa E",
                maxLines: 1,
                style: AppManager.textTheme.headlineSmall,
              ),
            ),
            const SizedBox(
              height: spaceSizedBoxHeight - 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding - 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _createRichTextWidget('35 000', 'Przebieg'),
                  const SizedBox(
                    width: spaceSizedBoxWidth,
                  ),
                  _createRichTextWidget('Benzyna', 'Paliwo'),
                  const SizedBox(
                    width: spaceSizedBoxWidth,
                  ),
                  _createRichTextWidget('Automatyczna', 'Skrzynia'),
                ],
              ),
            ),
            const SizedBox(
              height: spaceSizedBoxHeight - 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding - 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _createRichTextWidget('2021', 'Rocznik'),
                  const SizedBox(
                    width: spaceSizedBoxWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: _createRichTextWidget('340', 'KM'),
                  ),
                  const SizedBox(
                    width: spaceSizedBoxWidth - 1,
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      "Opublikowano\n 20 minut temu",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: AppManager.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  RichText _createRichTextWidget(String mainText, String addonation) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: mainText,
            style: AppManager.textTheme.bodySmall,
          ),
          TextSpan(
            text: '\n$addonation',
            style: AppManager.textTheme.bodySmall!.apply(
              color: Colors.grey,
              fontSizeFactor: 0.9,
            ),
          ),
        ],
      ),
    );
  }
}

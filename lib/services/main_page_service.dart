import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/constants/constant_colors.dart';
import 'package:rent_me/constants/constant_images.dart';
import 'package:rent_me/constants/constant_sizes.dart';

Widget getMainPageBody() {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.all(allPaddingDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: spaceSizedBoxHeight,
          ),
          _getSearchBar(),
          const SizedBox(
            height: spaceSizedBoxHeight,
          ),
          _getSpecialOffertsContainer(),
          const SizedBox(
            height: spaceSizedBoxHeight,
          ),
          _getSuggestedOfferts(),
        ],
      ),
    ),
  );
}

Widget _getSearchBar() {
  return Container(
    width: double.infinity,
    height: AppManager.appSize.height * 0.07,
    decoration: BoxDecoration(
        border: Border.all(
          color: secondaryColor,
        ),
        borderRadius: BorderRadius.circular(defaultContainerBorderRadius)),
    child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_rounded,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text("Wyszukaj..."),
      ],
    ),
  );
}

Widget _getSpecialOffertsContainer() {
  return Container(
    width: double.infinity,
    height: AppManager.appSize.height * 0.23,
    decoration: BoxDecoration(
      border: Border.all(
        color: secondaryColor,
      ),
      borderRadius: BorderRadius.circular(defaultContainerBorderRadius),
    ),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () {
              debugPrint("Left");
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              debugPrint("Right");
            },
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _getSuggestedOfferts() {
  return SizedBox(
    width: double.infinity,
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const SizedBox(
          width: 200,
          child: Image(
            image: AssetImage(carImageOne),
          ),
        );
      },
    ),
  );
}

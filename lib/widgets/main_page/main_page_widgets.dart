import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/constants/constant_colors.dart';
import 'package:rent_me/constants/constant_sizes.dart';
import 'package:rent_me/widgets/main_page/offer_widget.dart';
import 'package:rent_me/widgets/search_bar_widget.dart';

TextEditingController _searchController = TextEditingController();

Widget getMainPageBody() {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: spaceSizedBoxHeight,
          ),
          getSearchBar(textController: _searchController),
          const SizedBox(
            height: spaceSizedBoxHeight,
          ),
          _getSpecialOffersContainer(),
          const SizedBox(
            height: spaceSizedBoxHeight,
          ),
          _getSuggestedOffers(),
        ],
      ),
    ),
  );
}

Widget _getSpecialOffersContainer() {
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

Widget _getSuggestedOffers() {
  return SizedBox(
    width: double.infinity,
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const OfferWidget();
      },
    ),
  );
}
